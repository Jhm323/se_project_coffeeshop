import express from "express";
import { pool } from "../db/db.js";
import { requireFields } from "../utils/validate.js";

const router = express.Router();

// POST /reservations [save booking]
router.post("/", async (req, res, next) => {
  try {
    requireFields(req.body, ["name", "guests", "date_time", "email"]);

    const { name, guests, date_time, email } = req.body;

    const result = await pool.query(
      "INSERT INTO reservations (name, guests, date_time, email, created_at) VALUES ($1, $2, $3, $4, NOW()) RETURNING *",
      [name, guests, date_time, email],
    );

    res.status(201).json(result.rows[0]);
  } catch (err) {
    next(err);
  }
});

// GET /reservations [admin:list all]
router.get("/", async (req, res, next) => {
  try {
    const result = await pool.query(
      "SELECT * FROM reservations ORDER BY created_at DESC",
    );
    res.json(result.rows);
  } catch (err) {
    next(err);
  }
});

export default router;
