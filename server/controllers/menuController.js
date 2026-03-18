import { pool } from "../db/db.js";
import { requireFields } from "../utils/validate.js";

export const getMenu = async (req, res, next) => {
  try {
    const result = await pool.query(
      "SELECT * FROM menu_items WHERE is_available = TRUE ORDER BY category, name",
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
};

export const createMenuItem = async (req, res, next) => {
  try {
    requireFields(req.body, ["category", "name", "price"]);

    const {
      category,
      name,
      price,
      is_available = true,
      description = null,
      tags = [],
    } = req.body;

    const result = await pool.query(
      `INSERT INTO menu_items (category, name, price, is_available, description, tags)
       VALUES ($1, $2, $3, $4, $5, $6) RETURNING *`,
      [category, name, price, is_available, description, tags],
    );
    res.status(201).json(result.rows[0]);
  } catch (err) {
    next(err);
  }
};

export const updateMenuItem = async (req, res, next) => {
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

    if (!result.rows.length) {
      const err = new Error("Menu item not found");
      err.status = 404;
      throw err;
    }

    res.json(result.rows[0]);
  } catch (err) {
    next(err);
  }
};

export const deleteMenuItem = async (req, res, next) => {
  try {
    const { id } = req.params;

    const result = await pool.query(
      "DELETE FROM menu_items WHERE id = $1 RETURNING id",
      [parseInt(id, 10)],
    );

    if (!result.rows.length) {
      const err = new Error("Menu item not found");
      err.status = 404;
      throw err;
    }

    res.json({ message: "Menu item deleted" });
  } catch (err) {
    next(err);
  }
};
