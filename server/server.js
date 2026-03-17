import express from "express";
import cors from "cors";
import dotenv from "dotenv";

import reservationsRouter from "./routes/reservations.js";
import menuRouter from "./routes/menu.js";
import contactRouter from "./routes/contact.js";

require("dotenv").config();

const express = require("express");
const cors = require("cors");

const app = express();

// Middleware
app.use(cors());
app.use(express.json());

// Routes
app.use("/reservations", reservationsRouter);
app.use("/menu", menuRouter);
app.use("/contact", contactRouter);

// 404
app.use((req, res) => {
  res.status(404).json({ error: "Route not found" });
});

// Error handler
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ error: "Something went wrong!" });
});

// Start server
const PORT = process.env.PORT || 5001;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
