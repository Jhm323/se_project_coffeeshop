# Coffee Shop ☕️

A full-stack coffee shop site with a custom REST API backend.

This started as a static landing page and I extended it into a working system where the frontend fetches real data and submits reservations and contact forms to a backend connected to a PostgreSQL database.

---

## Live preview

[Add demo link here if deployed]

---

## What it does

- Displays menu data fetched from a backend API  
- Allows users to submit table reservations and contact messages  
- Stores and retrieves data from a PostgreSQL database  
- Handles form validation and API errors so the UI doesn’t break  

---

## Stack

Frontend  
- HTML, CSS (BEM)  
- Vanilla JavaScript (ES modules, fetch)

Backend  
- Node.js + Express  
- PostgreSQL (`pg`)  
- REST API with separated routes and controllers  

---

## How it’s built

- Frontend makes requests to a custom API instead of using static data  
- Backend is structured with routes → controllers → database layer  
- Centralized error handling keeps responses consistent  
- Validation is applied to incoming data before it reaches the database  

One thing I focused on here was keeping the backend structure clean so it would be easy to extend (adding new routes or features without rewriting everything).

---

## Example API routes
