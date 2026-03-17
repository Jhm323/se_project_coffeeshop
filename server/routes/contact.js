import express from "express";
import { pool } from "../db/db.js";

const router = express.Router();

// POST /contact [save a message]
router.post("/", async (req, res, next) => {
  try {
    const { name, email, message } = req.body;

    const result = await pool.query(
      `INSERT INTO contact_messages (name, email, message)
       VALUES ($1, $2, $3) RETURNING *`,
      [name, email, message],
    );

    res.status(201).json(result.rows[0]);
  } catch (err) {
    next(err);
  }
});

export default router;
