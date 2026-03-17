import express from "express";
import cors from "cors";
import dotenv from "dotenv";

import reservationsRouter from "./routes/reservations.js";
import menuRouter from "./routes/menu.js";
import contactRouter from "./routes/contact.js";

dotenv.config();

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

app.use("/reservations", reservationsRouter);
app.use("/menu", menuRouter);
app.use("/contact", contactRouter);

app.use((req, res) => {
  res.status(404).json({ error: "Route not found" });
});

app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ error: "Something went wrong!" });
});

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
