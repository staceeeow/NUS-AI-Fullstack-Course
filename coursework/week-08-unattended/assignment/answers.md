# Module 7 Week 8 Required Assignment

## 1. Identify Key Concepts

**a) Three key concepts of modern frontend frameworks**

- **Component-based design** — the UI is broken into small, self-contained, reusable pieces (components) that each manage their own markup, styling and behaviour, and can be nested to build up a full page.
- **Client-side rendering (CSR)** — the browser downloads a JavaScript bundle and builds/updates the DOM on the client, instead of the server sending back a fully rendered HTML page for every interaction.
- **Declarative programming** — you describe *what* the UI should look like for a given state (e.g. `<Button disabled={isLoading}>`), and the framework figures out *how* to update the DOM to match, instead of you manually writing DOM manipulation steps.

**b) Example scenario for each**

- *Component-based design*: A `Card` component used to show a course on a listing page, a search-results page and a "recommended for you" carousel — write it once, reuse it in all three places with different props.
- *Client-side rendering*: A dashboard where clicking between tabs (Overview / Grades / Messages) swaps the visible content instantly without a full page reload, because the router just swaps which component is mounted.
- *Declarative programming*: A "Save" button that should show a spinner while a request is in flight — you write `{isSaving ? <Spinner /> : "Save"}` and let React re-render, rather than manually hiding/showing elements with `document.getElementById`.

## 3. CSR & SSR

**a) Explain CSR & SSR**

- **CSR (Client-Side Rendering)**: the server sends a minimal HTML shell plus a JavaScript bundle; the browser executes the JavaScript, which then builds the page's HTML/DOM and fetches any data it needs. Most of the "work" happens after the page arrives, in the browser.
- **SSR (Server-Side Rendering)**: the server renders the full HTML for a page (including data) on every request and sends that finished HTML to the browser. The browser can display it immediately, and JavaScript "hydrates" it afterwards to make it interactive.

**b) Difference between CSR and SSR, with advantages**

| | CSR | SSR |
|---|---|---|
| Initial load | Slower first paint (blank shell until JS runs) | Faster first paint — HTML is already built |
| Navigation between pages | Fast — only re-renders changed components | Usually a fresh request per page, unless combined with client-side routing after hydration |
| SEO | Harder — crawlers may see an empty shell unless they execute JS | Easier — crawlers get full content immediately |
| Server load | Lower — server just serves static files/APIs | Higher — server does rendering work per request |
| Best for | Highly interactive apps (dashboards, SPAs) | Content-heavy, SEO-sensitive pages (blogs, marketing pages) |

## 4. Single Page Application (SPA) Structure

**a) Define SPA**

A Single Page Application loads a single HTML page once, then uses JavaScript to dynamically rewrite the visible content and update the URL (via a client-side router) as the user navigates — without requesting a brand-new HTML page from the server on every click.

**b) Two advantages of SPA structure**

1. **Faster perceived navigation** — only the data/components that change need to be fetched and re-rendered, instead of reloading the entire page (CSS, JS, shared layout) every time.
2. **Smoother, app-like UX** — state (e.g. a form the user is filling in, a scroll position, an open modal) can persist across "page" changes since the page never actually reloads.
