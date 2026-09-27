import { useState } from "react";

function PasswordStrength() {
  const [password, setPassword] = useState("");
  const [result, setResult] = useState("");

  const checkStrength = () => {
    if (password.length < 6) {
      setResult("Weak password");
    } else if (/\d/.test(password)) {
      setResult("Strong password");
    } else {
      setResult("Weak password");
    }
  };

  return (
    <div style={{ padding: "20px" }}>
      <h2>Password Strength Checker</h2>
      <input
        type="password"
        placeholder="Enter a password"
        value={password}
        onChange={(e) => setPassword(e.target.value)}
        style={{ marginBottom: "10px", display: "block" }}
      />
      <button onClick={checkStrength}>Check Strength</button>
      {result && <p>{result}</p>}
    </div>
  );
}

export default PasswordStrength;
