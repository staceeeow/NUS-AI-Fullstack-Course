# Module 12: RESTful API Development — Summary

## Module Overview

- Server-side HTML rendering executes presentation logic on the server, while client-side rendering runs it on the user's browser.
- Client-side applications can access server-stored data through either dedicated RESTful API endpoints or direct cloud service API calls.
- RESTful API endpoints are preferred over direct cloud API calls due to better customisation and business logic control.
- A single set of RESTful API endpoints can support multiple frontend interfaces, improving scalability and long-term maintainability.
- This module introduces RESTful web services and walks through implementation using both JavaScript and Python.

## Overview of Service-Oriented Architecture (SOA) and Microservices Architecture

- Object-oriented programming promotes modularity and reuse but results in complex backend structures that complicate frontend integration.
- Component-based architecture simplifies integration by grouping related classes into standalone components, reducing direct frontend-backend interactions.
- Despite its benefits, component-based architecture lacks flexibility in diverse environments due to its reliance on native method calls.
- A monolithic SOA setup is illustrated, where backend web services interact with various frontend applications through standard HTTP protocols.
- Microservices architecture replaces the monolithic SOA model by enabling independently deployed web services that support flexible and parallel development.

## Introduction to RESTful Web Services

- Big web services use SOAP and XML with WSDL-defined operations, while RESTful services use HTTP methods with XML or JSON.
- RESTful web services simplify integration by removing the need for protocols like SOAP and interface definitions like WSDL.
- RESTful APIs follow standard HTTP methods—PUT, GET, POST, and DELETE—corresponding to the four CRUD operations.
- Compared to big web services, RESTful services are lighter, more scalable, loosely coupled, and better suited for mobile and IoT.
- RESTful services exchange stateless, self-descriptive messages in plain text, using URLs to identify endpoints and resources.

## Introduction to JSON

- JSON and XML are both plain text formats used in RESTful web services, but JSON is generally more widely preferred.
- Both formats are human readable, hierarchical, and compatible with modern web browsers through the XMLHttpRequest object.
- JSON is more concise than XML, omitting end tags and angle brackets, which makes it faster and easier to read and write.
- JSON integrates well with JavaScript and Python due to structural similarities with JavaScript objects and Python dictionaries.
- JSON is commonly used for both input and output data in RESTful operations such as GET, POST, and PUT requests.

## Best Practices in RESTful API Design

- A well-designed API should be intuitive, defensive in handling errors, and complete enough to support full application development.
- Informative feedback, meaningful HTTP status codes, and clear input validation enhance usability and prevent incorrect API usage.
- Efficient read operations should avoid retrieving all records, favour pagination, and limit unnecessary relationship data fetches.
- Bulk write operations and thorough data validation improve performance and reduce the number of API calls during transactions.
- Robust security practices like JSON web tokens, encryption, and application keys are essential to protect API endpoints from misuse.

## Creating RESTful API Endpoints with Expressjs

- RESTful web services using Express.js return data in JSON format, unlike server-side web apps that return HTML content.
- All data used in the RESTful web services is assumed to be stored in a database table of product records accessed using standard techniques.
- GET endpoints can retrieve all product records or a specific product using a route parameter, with proper error handling included.
- PUT and POST methods accept JSON data in the request body to create or update records, with checks for record existence.
- DELETE operations use query string parameters to identify records and return appropriate status codes based on success or failure.

## Testing RESTful API Endpoints with Postman

- Postman is a GUI-based tool that enables testing of RESTful web services by sending HTTP requests with various methods and inputs.
- The Visual Studio Code plugin version of Postman allows users to manage workspaces, organise requests in collections, and save configurations.
- HTTP requests in Postman can include URL, query strings, and request body, with results displayed in the response section after execution.
- Response data, such as JSON output and HTTP status codes like 200, help verify correct behaviour of RESTful endpoints during testing.
- Automated test scripts in Postman validate responses and status codes, improving reliability and streamlining backend development workflows.

## Creating RESTful API Endpoints with Flask and Connexion

- Connexion, built on Flask, enables development of RESTful web services in Python using a declarative OpenAPI or Swagger specification.
- A single Flask application can serve both HTML and JSON data, allowing integration of server-rendered pages with RESTful endpoints.
- The OpenAPI YAML file defines endpoints and HTTP methods, mapping each one to specific Python functions through operationId declarations.
- Python functions use SQLite to query product data, convert tuples to dictionaries, and return JSON responses along with meaningful HTTP status codes.
- Swagger UI auto-generates interactive documentation that allows direct testing of RESTful endpoints, replacing the need for Postman during early validation.

## Module Summary

- RESTful web services resemble server-side rendering but focus on returning data instead of HTML content.
- Effective API design requires advanced techniques, including robust error handling, validation, and security.
- Effective RESTful services require attention to error handling, security, performance, and scalability.
- Express.js, Connexion, and Flask are essential tools for building and experimenting with RESTful services.
- RESTful APIs will play a key role in upcoming modules on AI model deployment and integration.
