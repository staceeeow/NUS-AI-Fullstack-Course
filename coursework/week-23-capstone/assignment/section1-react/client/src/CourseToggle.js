import { useState } from "react";

function CourseToggle() {
  const [isVisible, setIsVisible] = useState(false);

  return (
    <div style={{ padding: "20px" }}>
      <h2>Course Description</h2>
      <button onClick={() => setIsVisible(!isVisible)}>
        {isVisible ? "Hide Description" : "Show Description"}
      </button>
      {isVisible && <p>This course covers React fundamentals including components, JSX, and props.</p>}
    </div>
  );
}

export default CourseToggle;
