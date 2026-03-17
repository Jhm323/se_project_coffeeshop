import express from "express";
import { pool } from "../db/db.js";
import { requireFields } from "../utils/validate.js";

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
    requireFields(req.body, ["category", "name", "price", "is_available"]);

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
    const { price, is_available } = req.body;
    const { id } = req.params;

    const result = await pool.query(
      `UPDATE menu_items
       SET price = $1,
           is_available = $2
       WHERE id = $3
       RETURNING *`,
      [price, is_available, parseInt(id, 10)],
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
