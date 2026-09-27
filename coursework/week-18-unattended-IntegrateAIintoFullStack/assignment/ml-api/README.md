# ml-api

Iris classifier used for Tasks 1, 3 & 4 of the Week 18 assignment.

```
pip install flask flask-cors joblib scikit-learn mlflow skl2onnx onnxruntime

python train_and_save.py     # Task 1: saves model.pkl / model.joblib / model.onnx
python app.py                 # Task 3: serves POST /predict on :5001
node client.js                 # Task 3d: example client call (server must be running)

python mlflow_log.py          # Task 4: logs the model to MLflow with a signature, prints its run ID
mlflow models serve -m "runs:/<run_id>/model" -p 5002 --env-manager local   # Task 4b
```
