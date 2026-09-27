import PasswordStrengthChecker from "./PasswordStrengthChecker";
import CourseDescriptionToggle from "./CourseDescriptionToggle";
import "./App.css";

function App() {
  return (
    <div className="app">
      <h1>AI-Powered LMS</h1>
      <PasswordStrengthChecker />
      <CourseDescriptionToggle />
    </div>
  );
}

export default App;
