import express from "express";
import { pool } from "../db/db.js";

const router = express.Router();

// GET /menu  [full menu by category]
router.get("/", async (req, res, next) => {
  try {
    const result = await pool.query(
      "SELECT * FROM menu_items ORDER BY category, name",
    );
    const grouped = result.rows.reduce((acc, item) => {
      if (!acc[item.category]) acc[item.category] = [];
      acc[item.category].push(item);
      return acc;
    }, {});
    res.json(grouped);
  } catch (err) {
    next(err);
  }
});

// POST /menu [add item]
router.post("/", async (req, res, next) => {
  try {
    const { category, name, price, is_available } = req.body;

    const result = await pool.query(
      `INSERT INTO menu_items (category, name, price, is_available)
       VALUES ($1, $2, $3, $4) RETURNING *`,
      [category, name, price, is_available],
    );
    res.status(201).json(result.rows[0]);
  } catch (err) {
    next(err);
  }
});

// PUT /menu/:id [update price... availability]
router.put("/:id", async (req, res, next) => {
  try {
    const { id } = req.params;
    const { price, is_available } = req.body;

    const result = await pool.query(
      `UPDATE menu_items
       SET price = COALESCE($1, price),
           is_available = COALESCE($2, is_available)
       WHERE id = $3
       RETURNING *`,
      [price, is_available, id],
    );

    res.json(result.rows[0]);
  } catch (err) {
    next(err);
  }
});

// DELETE /menu/:id
router.delete("/:id", async (req, res, next) => {
  try {
    const { id } = req.params;

    await pool.query("DELETE FROM menu_items WHERE id = $1", [id]);
    res.json({ message: "Menu item deleted" });
  } catch (err) {
    next(err);
  }
});

export default router;
