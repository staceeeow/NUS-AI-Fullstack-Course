"""
Task 1: trains one simple model and persists it three different ways
(pickle, joblib, ONNX) so the three techniques can be compared directly.
"""
import pickle
import joblib
import numpy as np
from sklearn.datasets import load_iris
from sklearn.linear_model import LogisticRegression

iris = load_iris()
X, y = iris.data, iris.target

model = LogisticRegression(max_iter=200)
model.fit(X, y)
print("Training accuracy:", model.score(X, y))

# 1. Pickle - Python's generic object serialisation
with open("model.pkl", "wb") as f:
    pickle.dump(model, f)

# 2. Joblib - optimised for objects with large numpy arrays (common for sklearn models)
joblib.dump(model, "model.joblib")

# 3. ONNX - cross-platform/cross-framework format
from skl2onnx import to_onnx

onnx_model = to_onnx(model, X[:1].astype(np.float32))
with open("model.onnx", "wb") as f:
    f.write(onnx_model.SerializeToString())

print("Saved model.pkl, model.joblib and model.onnx")
