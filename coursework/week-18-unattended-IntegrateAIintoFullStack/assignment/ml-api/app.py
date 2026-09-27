"""
Task 3: serves the persisted model via a /predict REST endpoint.
"""
import joblib
import numpy as np
from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # Task 3c: allow cross-origin requests from a frontend on a different port/domain

model = joblib.load("model.joblib")
CLASS_NAMES = ["setosa", "versicolor", "virginica"]


@app.route("/predict", methods=["POST"])
def predict():
    data = request.get_json(silent=True)
    if not data or "features" not in data:
        return jsonify({"error": "Request body must be JSON with a 'features' array of 4 numbers"}), 400

    features = data["features"]
    if not isinstance(features, list) or len(features) != 4:
        return jsonify({"error": "'features' must be an array of exactly 4 numbers"}), 400

    try:
        X = np.array([features], dtype=float)
    except (TypeError, ValueError):
        return jsonify({"error": "'features' must all be numbers"}), 400

    prediction = model.predict(X)[0]
    probabilities = model.predict_proba(X)[0]

    return jsonify({
        "prediction": CLASS_NAMES[prediction],
        "probabilities": dict(zip(CLASS_NAMES, probabilities.round(4).tolist())),
    })


if __name__ == "__main__":
    app.run(port=5001, debug=True)
