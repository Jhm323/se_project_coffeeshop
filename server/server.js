import express from "express";
import cors from "cors";
import dotenv from "dotenv";

import reservationsRouter from "./routes/reservations.js";
import menuRouter from "./routes/menu.js";
import contactRouter from "./routes/contact.js";
import errorHandler from "./middleware/errorHandler.js";

dotenv.config();

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

app.use("/reservations", reservationsRouter);
app.use("/menu", menuRouter);
app.use("/contact", contactRouter);

// Root route for testing
app.get("/", (req, res) => {
  res.json({ message: "Coffee Shop API is running!" });
});

// 404 handler
app.use((req, res) => {
  res.status(404).json({ error: "Route not found" });
});

// Error handler
app.use(errorHandler);

// Start server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
