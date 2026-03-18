import { pool } from "../db/db.js";
import { requireFields } from "../utils/validate.js";

export const createContactMessage = async (req, res, next) => {
  try {
    requireFields(req.body, ["name", "email", "message"]);

    const { name, email, message } = req.body;

    const result = await pool.query(
      `INSERT INTO contact_messages (name, email, message, created_at)
       VALUES ($1, $2, $3, NOW()) RETURNING *`,
      [name, email, message],
    );

    res.status(201).json(result.rows[0]);
  } catch (err) {
    next(err);
  }
};
