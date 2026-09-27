"""
Task 4: logs the same Iris model to MLflow with an inferred model signature
(input/output schema), so it can be served with `mlflow models serve`.
"""
import mlflow
from mlflow.models import infer_signature
from sklearn.datasets import load_iris
from sklearn.linear_model import LogisticRegression

iris = load_iris()
X, y = iris.data, iris.target

model = LogisticRegression(max_iter=200)
model.fit(X, y)

signature = infer_signature(X, model.predict(X))

with mlflow.start_run() as run:
    mlflow.sklearn.log_model(model, name="model", signature=signature)
    print("Run ID:", run.info.run_id)
    print("Model URI: runs:/" + run.info.run_id + "/model")
    print("Signature:", signature)
