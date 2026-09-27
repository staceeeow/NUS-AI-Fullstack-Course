import { useState } from "react";

// Toggles a course description with a button whose label also updates
function CourseDescriptionToggle() {
  const [showDescription, setShowDescription] = useState(false);

  return (
    <section>
      <h2>Full Stack Web Development</h2>
      <button onClick={() => setShowDescription(!showDescription)}>
        {showDescription ? "Hide Description" : "Show Description"}
      </button>
      {showDescription && (
        <p>Learn HTML, CSS, JavaScript, React and Express to build complete web applications from front to back.</p>
      )}
    </section>
  );
}

export default CourseDescriptionToggle;
