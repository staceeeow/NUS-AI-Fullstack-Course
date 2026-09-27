// Task 3d: consuming the /predict endpoint from JavaScript (async/await + fetch)
async function getPrediction(features) {
  const response = await fetch("http://localhost:5001/predict", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ features }),
  });

  if (!response.ok) {
    const err = await response.json();
    throw new Error(err.error || "Request failed");
  }

  return response.json();
}

getPrediction([5.1, 3.5, 1.4, 0.2])
  .then((result) => console.log("Prediction result:", result))
  .catch((err) => console.error("Prediction failed:", err.message));
