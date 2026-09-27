# Module 16 Week 18 Required Assignment

Code for Tasks 3 & 4 lives in `ml-api/` — see `ml-api/README.md` for how to run it. This file covers the written parts.

## 1. Model Persistence Techniques

**a) & b) Three techniques, use cases, compatibility**

- **Pickle** — Python's built-in generic object serialiser. Can persist almost any Python object (including full sklearn/PyTorch models with custom attributes). Pitfall: pickle files are Python-version and library-version sensitive, and unpickling untrusted files can execute arbitrary code, so they're only safe to load from a source you trust.
- **Joblib** — built for objects containing large numpy arrays (most sklearn models). Same general use case as pickle but faster and more memory-efficient for array-heavy models; still Python-only and version-sensitive.
- **ONNX** — an open, framework-agnostic format. A model trained in one framework (e.g. scikit-learn, PyTorch, TensorFlow) is exported to a single `.onnx` file that can be loaded and run by a different framework/runtime (e.g. `onnxruntime` in Python, C++, Java, or even in-browser) — good when the training and serving environments differ, or when you need a small, dependency-light runtime for inference. Pitfall: not every model operation/layer has an ONNX equivalent, so conversion can fail or lose custom logic for very custom models.

**c) & d) Comparison**

| | Pickle | Joblib | ONNX |
|---|---|---|---|
| Serialisation speed | Moderate | Fast for large numpy arrays | Slower to export, fast to run |
| Cross-platform compatibility | Python-only, version-sensitive | Python-only, version-sensitive | Cross-language/cross-framework by design |
| Human readability | No (binary) | No (binary) | No (binary protobuf), but schema is inspectable via tools |
| When to use | Quick local persistence of any Python object | sklearn/numpy-heavy models, same Python environment | Deploying across languages/runtimes, or decoupling serving stack from training stack |

## 2. Model Serving with RESTful APIs

**a) Flask + Connexion**

Flask is a minimal Python web framework; Connexion sits on top of it and lets you define your API's routes, request/response schemas and validation in an **OpenAPI (Swagger) YAML/JSON spec** rather than writing routing boilerplate by hand. Connexion reads that spec and automatically wires up routing, request validation, and (optionally) interactive API docs, while your Flask handler functions just implement the business logic (loading the model and returning a prediction).

**b) Advantages of an OpenAPI specification**

- The spec is both **documentation and validation** at once — it describes exactly what a `/predict` request/response looks like, and the framework rejects malformed requests automatically instead of failing deep inside handler code.
- It's **machine-readable**, so client SDKs, interactive docs (Swagger UI) and test stubs can be auto-generated from it, keeping frontend and backend in sync as the API evolves.

**c) REST API serving vs. MLflow-based serving**

A hand-rolled Flask/Connexion REST API gives full control over request handling, validation, auth, and response shape, but you own all of that plumbing yourself. **MLflow model serving** (`mlflow models serve`) instead takes a model you've already logged (with its signature and dependencies captured by MLflow) and spins up a standard `/invocations` endpoint for it with zero custom serving code — trading some flexibility in request/response shape for near-zero setup and guaranteed reproducibility of the exact environment the model was trained in.

**d) Example deployment tools**

- **Flask** — lightweight, full control, good for a custom-shaped API.
- **FastAPI** — similar to Flask but with built-in OpenAPI docs, async support and automatic request validation via type hints.
- **MLflow** — model registry + one-command serving (`mlflow models serve`), strong for reproducibility and versioning.

## 3. Consuming ML APIs in Full Stack Applications

The provided `/predict` endpoint (implemented in `ml-api/app.py`) is consumed as follows:

**a) Request structure** — a `POST` request with header `Content-Type: application/json` and a JSON body `{ "features": [5.1, 3.5, 1.4, 0.2] }`. The API validates the body (must contain a `features` array of exactly 4 numbers) before running inference, returning `400` on a malformed request.

**b) Asynchronous responses** — since inference isn't instant, the frontend calls the endpoint with `fetch` inside an `async` function and `await`s the response (see `ml-api/client.js`) rather than blocking the UI thread; the calling component shows a loading state until the promise resolves, and a caught error state if it rejects.

**c) CORS and security implications** — because the frontend (e.g. `localhost:3000`) and the model API (e.g. `localhost:5001`) run on different origins, the browser blocks the response unless the API sends `Access-Control-Allow-Origin` headers — handled here with `flask-cors` (`CORS(app)`), scoped to only the frontend's origin in a real deployment rather than `*`. Security-wise, the endpoint should also rate-limit requests and never trust the input blindly (this API rejects any payload that isn't exactly 4 numbers) to avoid crashes or resource exhaustion from malformed/adversarial input.

**d) Working request/response** (captured from the running Flask API in `ml-api/app.py`):

```
$ curl -X POST -H "Content-Type: application/json" \
       -d '{"features":[5.1,3.5,1.4,0.2]}' \
       http://localhost:5001/predict

{
  "prediction": "setosa",
  "probabilities": {
    "setosa": 0.9816,
    "versicolor": 0.0184,
    "virginica": 0.0
  }
}
```

## 4. MLflow Model Serving

**a) What MLflow is**

MLflow is an open-source platform for the ML lifecycle — experiment tracking, model packaging/versioning (the "Model Registry"), and serving. Unlike a custom Flask API, you don't write any serving code: you `log_model()` a trained model (MLflow captures its framework, dependencies and a signature), and MLflow can serve *any* logged model through the same standard `/invocations` endpoint — the serving code is generic, not written per-model.

**b) Serving a model with MLflow**

```
python mlflow_log.py          # trains + logs the model, prints its run ID
mlflow models serve -m "runs:/<run_id>/model" -p 5002 --env-manager local
```

**c) Model signature**

Captured automatically via `mlflow.models.infer_signature` when logging (see `mlflow_log.py`):

```
inputs:
  [Tensor('float64', (-1, 4))]
outputs:
  [Tensor('int64', (-1,))]
```

i.e. the model accepts any number of rows of 4 float64 features and returns one int64 class label per row.

**d) Working cURL request and MLflow response**

```
$ curl -X POST http://localhost:5002/invocations \
       -H "Content-Type: application/json" \
       -d '{"inputs": [[5.1, 3.5, 1.4, 0.2]]}'

{"predictions": [0]}
```

(class `0` = *setosa*, matching the Flask API's prediction for the same input above.)
