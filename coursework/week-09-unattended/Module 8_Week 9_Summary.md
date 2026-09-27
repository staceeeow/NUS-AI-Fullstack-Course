# Module 8: Week 9: Working with React – Part 1 — Summary

## Module Overview

- React is introduced as a widely used JavaScript library that enables developers to build modern, efficient, and scalable single-page applications.
- Core concepts such as props, state, event handling, and component types are explained to help structure dynamic and interactive user interfaces.
- Essential JavaScript ES6 features, including arrow functions, destructuring, and module imports/exports, are integrated as foundational tools for React development.
- Practical guidance is provided on setting up a React environment, handling side effects with hooks like useEffect and useRef, and working with APIs.
- Navigation and routing using React Router, along with project setup using Create React App, are covered to support scalable application development.

## Introduction to React

- React is a JavaScript library developed by Facebook that simplifies UI development using reusable, self-contained components and a virtual DOM.
- React offers advantages such as improved performance, component reusability, easier debugging through unidirectional data flow, and strong community support.
- JSX enables writing HTML-like syntax within JavaScript, improving readability and structure, but requires transpilation via Babel to work in browsers.
- Setting up React involves linking React, ReactDOM, and Babel scripts, and configuring the HTML structure with a root div and JSX-enabled script.
- Components in React can be created using class or function syntax, with function components being simpler, more modern, and preferred for new development.

## Working with React Props

- Props, short for properties, are used in React to pass data to components, enabling reusability and dynamic behaviour.
- JavaScript expressions can be evaluated within JSX by enclosing them in curly braces, including numbers, objects, and variables.
- Arrays can be rendered using the map() function, and each item must have a unique key to optimise React's rendering process.
- Multiple JSX elements must be wrapped in a single root element, often achieved using React fragments to avoid unnecessary nesting.
- The props.children property allows components to receive nested content between opening and closing tags, supporting more flexible and customisable component structures.

## ES6 Module System and Organising React Applications

- React applications are structured using the ES6 module system, where each component is stored in its own file and treated as a module.
- Components are typically exported using export default, and imported using consistent, descriptive names to maintain clarity and prevent confusion.
- CodeSandbox offers a cloud-based development environment that eliminates local setup, allowing immediate access to a pre-configured React workspace.
- A typical React project structure includes index.js as the entry point and App.js as the main component that renders the overall application.
- Separating components into individual files improves code readability, reusability, and scalability, supporting better organisation in large-scale React projects.

## Modern ES6 Constructs

- Arrow functions provide a more concise syntax for writing functions and are frequently used in modern JavaScript and React development.
- Template strings support multi-line formatting and allow string interpolation using backticks and ${} syntax, improving code clarity and flexibility.
- Object literal shorthand enables simpler object declarations when variable names match property names, reducing redundancy and improving readability.
- Rest and spread operators simplify data manipulation by grouping or expanding elements in arrays, objects, and function arguments using '...' syntax.
- Destructuring allows for direct extraction of values from arrays or objects, enabling cleaner code and easier access to required properties or elements.

## Hands on Exercise Building a Profile Viewer

- CodeSandbox provides a quick setup for building a React profile viewer using hardcoded user data and modular components.
- Profile components are created in separate files and styled using JavaScript objects to maintain structure and visual consistency.
- JSX syntax enables dynamic rendering of user profiles by mapping over data arrays and passing props to reusable components.
- Destructuring props simplifies access to user fields like avatar, name and employment details, enhancing readability and maintainability.
- Real-time preview and step-by-step coding reinforce understanding of React fundamentals including component design, styling and data handling.

THE END
