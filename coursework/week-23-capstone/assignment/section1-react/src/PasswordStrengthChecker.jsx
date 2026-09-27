import { useState } from "react";

// Checks length (>= 8 chars) & at least one number, shows a message accordingly
function PasswordStrengthChecker() {
  const [password, setPassword] = useState("");

  const hasMinLength = password.length >= 8;
  const hasNumber = /\d/.test(password);
  const isStrong = hasMinLength && hasNumber;

  let message = "";
  if (password.length > 0) {
    message = isStrong
      ? "Strong password"
      : "Weak password - needs at least 8 characters and a number";
  }

  return (
    <section>
      <h2>Password Strength Checker</h2>
      <input
        type="password"
        placeholder="Enter a password"
        value={password}
        onChange={(e) => setPassword(e.target.value)}
      />
      {message && (
        <p className={isStrong ? "strong" : "weak"}>{message}</p>
      )}
    </section>
  );
}

export default PasswordStrengthChecker;
