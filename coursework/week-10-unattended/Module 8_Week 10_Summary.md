# Module 8: Week 10: Working with React – Part 2 — Summary

## Module Overview

- HTML events refer to user actions such as clicks, keypresses, or mouse movements that can trigger specific browser behaviours.
- React uses a camelCase syntax for event attributes and requires passing function references instead of strings to handle events.
- Event handling in React allows nested functions within components, enabling dynamic response to user interactions like button clicks.
- Text input changes are captured using the onChange event and accessed through event.target.value to reflect real-time user input.
- Form submissions are handled using the onSubmit event, often combined with event.preventDefault() to prevent default page reloads.

## Working with React Hooks and States

- Props are immutable values passed from parent to child components, while state holds data that can change over a component's lifecycle.
- React automatically re-renders components when state changes, ensuring the user interface remains in sync with underlying data.
- Hooks enable function components to use state and other React features without converting them into class components.
- The useState() Hook returns a state variable and a setter function, typically accessed using array destructuring for cleaner syntax.
- Improper state updates without conditions or events can cause infinite re-rendering, making controlled state management essential in React.

## Controlled vs Uncontrolled Components

- Controlled components rely on React state to manage form inputs, ensuring the state fully determines the user interface at all times.
- State updates occur with every input change in controlled components, making them easier to test and debug using state inspection.
- Uncontrolled components allow the DOM to handle input values, updating state only during specific events such as button clicks.
- Dependence on the DOM in uncontrolled components introduces inconsistencies between the UI and the internal application state.
- Controlled components are generally preferred for consistency, reliability, and better compatibility with unit testing in React applications.

## Asynchronous JavaScript and XML (AJAX)

- JSON is a lightweight, text-based data exchange format commonly used to transmit structured data between clients and servers.
- AJAX enables asynchronous communication between a web page and a server, allowing dynamic updates without reloading the entire page.
- JSON syntax resembles JavaScript object literals but requires double quotes around property names to maintain valid formatting.
- RESTful APIs are widely used in modern applications to deliver structured JSON responses through AJAX requests initiated by the client.
- The fetch() function offers a modern, promise-based approach for making AJAX requests, replacing the older and more complex XMLHttpRequest.

## Working with useEffect Hooks

- The useEffect Hook ensures side effects such as data fetching are executed only when necessary, improving application performance.
- Uncontrolled fetch logic inside function components leads to repeated execution during re-rendering, resulting in unnecessary server communication.
- The dependency array in useEffect provides control over when the effect executes, based on changes to specified variables.
- An empty dependency array in useEffect guarantees that the effect runs only once during the initial render of the component.
- Use of multiple useEffect Hooks in a single component allows separation of concerns and clearer handling of different side effects.

## Working with useRef and Rules of Hooks

- The useRef hook enables referencing HTML elements and storing mutable values across renders without triggering re-renders, improving performance and interactivity.
- DOM access via .current allows direct manipulation, such as focusing input fields after conditional rendering and delayed execution for smoother user experience.
- State updates in React occur after function execution, requiring careful timing when combining useRef with conditional rendering and asynchronous logic.
- Mutable variables created with useRef persist across renders, making them ideal for storing non-UI data like timers or previous state values.
- React hook rules mandate calling hooks only at the top level of functional components, avoiding loops, conditions or nested functions to ensure predictable behaviour.

## React Router

- React Router enables single-page applications to simulate multi-page navigation by dynamically rendering components based on the URL path.
- HashHistory and BrowserHistory are the two routing mechanisms available in React, each with distinct URL behaviours.
- Wrapping the App component with either HashRouter or BrowserRouter allows routing setup, and Route and Routes control which components display for specific paths.
- Navigation between pages is achieved using Link or NavLink components, where NavLink adds styling to highlight the active link.
- Dynamic routing with route parameters is handled using useParams, and programmatic navigation is possible through the useNavigate hook.

## Create React App

- Create React App is a tool that simplifies the setup of production-ready React applications with minimal configuration.
- Transpiling is essential for browser compatibility and Create React App automates this process using tools like Babel in the background.
- Manual transpilation with Babel CLI is possible but inefficient, especially during development where frequent changes occur.
- Create React App offers a streamlined development experience, including auto-reloading and bundling for deployment.
- The tool uses a familiar file structure and works well with editors like Visual Studio Code for efficient local development.

## Module Summary

- Foundational understanding of React's architecture, including component-based design, Virtual DOM, JSX syntax, and the role of transpilation.
- Modular coding practices using ES6 modules and props to enable reusable, maintainable, and dynamic user interface components.
- Efficient coding in React using modern ES6 features such as arrow functions, template literals, rest/spread operators, and destructuring.
- Practical skills in managing state and side effects using React hooks and distinguishing between controlled and uncontrolled components.
- Complete workflow for building and deploying React apps using React Router for navigation and Create React App for development setup.

THE END
