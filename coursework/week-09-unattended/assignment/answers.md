# Module 8 Week 9 Required Assignment

## 1. Understand React and Its Advantages

**a) React's core features**

- **Component-based architecture** — the UI is split into independent, reusable components, each owning its own markup, logic and (optionally) state, which are composed together to build the full page.
- **Virtual DOM** — React keeps an in-memory representation of the UI. When state changes, React builds a new virtual DOM tree, diffs it against the previous one, and only applies the minimal set of real DOM updates needed — instead of re-rendering the whole page.
- **Unidirectional data flow** — data flows one way, from parent components down to children via props, and state changes flow back up through callbacks. This makes it much easier to trace where a piece of data came from and why the UI looks the way it does.

**b) Why these features suit modern web applications**

Component reuse means UI is built once and reused everywhere (a `Button` or `Card` used across many screens), which speeds up development and keeps the UI consistent. The Virtual DOM keeps updates fast even as an app grows, because React only touches the parts of the real DOM that actually changed, avoiding expensive full-page re-renders. Unidirectional data flow keeps state predictable in larger apps — with data only flowing one direction, it's far easier to debug "why did this change" than in an app where any part of the code can mutate shared state directly.
