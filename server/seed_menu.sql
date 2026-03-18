TRUNCATE TABLE menu_items RESTART IDENTITY;

INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Coffee', 'The Daily Grind', 2.50, TRUE, 'Straight drip. Black. No apologies. The coffee that clocks in before you do.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Double Shift', 3.00, TRUE, 'Double shot espresso. For when the first shift runs straight into the second.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Use the Foam, Luke', 4.25, TRUE, 'Oat milk latte with a rosette pulled by someone who actually cares. May the foam be with you.', NULL, ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Order 66 (Decaf)', 3.75, TRUE, 'Decaf oat milk americano. Dark side energy without the tremors. Execute your afternoon with precision.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'The Kessel Pour', 4.50, TRUE, 'Single origin pour over. Made in under 12 parsecs. Bright, fruity, recklessly good.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Blue Milk Flat White', 4.75, TRUE, 'Oat milk flat white. Creamy, smooth, pulled tight. Tatooine approved.', NULL, ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'May the Cortado Be With You', 3.50, TRUE, 'Equal parts espresso and oat milk. Balance is not just a Jedi concept.', NULL, ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Solidarity Macchiato', 3.25, TRUE, 'Classic macchiato marked with oat milk foam. Union approved since the first harvest.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Tea', 'The Force Chamomile', 2.00, TRUE, 'Pure chamomile. Calm that doesn''t ask permission. Caffeine free. Just peace.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free', 'caffeine-free']),
  ('Tea', 'Yoda''s Green', 2.25, TRUE, 'Sencha green tea. Earthy, grassy, ancient. 900 years of wisdom in a single steep.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Tea', 'Rebel Chai', 2.75, TRUE, 'Spiced oat milk chai. Cinnamon, cardamom, ginger. Warm enough to start a revolution.', NULL, ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Tea', 'Earl of the Republic', 2.00, TRUE, 'Earl grey with bergamot. Citrusy, floral, dignified. The people''s earl.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Tea', 'Peppermint Rebellion', 2.00, TRUE, 'Pure peppermint. Cold, clean, clarifying. Caffeine free. The clearest head in the room.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free', 'caffeine-free']);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Cold Drinks', 'Iced & Employed', 3.50, TRUE, 'Iced oat milk latte. Cold comfort for the overworked. Poured over ice like a small mercy.', NULL, ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'Cold Brew Coup', 3.75, TRUE, 'Slow steeped 18 hours. Smooth, dark, patient. Revolutions take time.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'The Hoth Blend', 4.00, TRUE, 'Frozen oat milk mocha. Icy, rich, relentless. Served at subzero conviction.', NULL, ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'Sparkling Resistance', 2.50, TRUE, 'Sparkling water with house-pressed citrus. Simple. Clean. Still here.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'Phantom Lemonade', 2.75, TRUE, 'House lemonade. Menacingly good. Always there. Always watching.', NULL, ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Baked Goods', 'The Workhorse Scone', 2.50, TRUE, 'Oat flour and raisin scone. Dense, honest. Made with avocado vegetable butter and egg replacer.', 'The Daily Grind', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Baked Goods', 'The Solidarity Brownie', 3.00, TRUE, 'Dark chocolate brownie. Oat flour, egg replacer, avocado vegetable butter. Fudgy, rich, gluten free.', 'The Hoth Blend', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Baked Goods', 'Banana Solidarity Bread', 2.75, TRUE, 'Banana bread. Oat flour and egg replacer. No dairy. No pretension. Just warmth.', 'The Force Chamomile', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Baked Goods', 'R2-Tea-Cakes', 2.25, TRUE, 'Oat and lemon tea cakes. Rice milk and avocado vegetable butter. Small, bright, beep-boop delicious.', 'Earl of the Republic', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Baked Goods', 'The Rebellion Muffin', 2.50, TRUE, 'Blueberry oat muffin. Egg replacer, oat flour, avocado vegetable butter. Rises every morning.', 'Yoda''s Green', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Baked Goods', 'Love & A Cookie', 1.50, TRUE, 'A simple oat and raisin cookie. Because sometimes love is the only ingredient that matters.', 'Anything. Just breathe.', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Light Food', 'The Clock-In Wrap', 6.50, TRUE, 'Hummus, roasted red pepper, arugula, cucumber, pickled onion in a rice flour wrap.', 'Double Shift', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Light Food', 'Han''s Solo Avocado Toast', 6.00, TRUE, 'Avocado on gluten free sourdough. Everything seasoning, hemp seeds, lemon.', 'Yoda''s Green', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Light Food', 'The Overtime Bagel', 5.50, TRUE, 'Gluten free everything bagel with sunflower seed schmear and cucumber.', 'Solidarity Macchiato', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Light Food', 'Death Star Grain Bowl', 7.25, TRUE, 'Quinoa, roasted chickpeas, beets, lemon dressing, microgreens. Destructive levels of nutrition.', 'Peppermint Rebellion', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Light Food', 'A New Hop Salad', 6.75, TRUE, 'Seasonal greens, shaved fennel, radish, cucumber, hemp seeds, lemon vinaigrette.', 'The Kessel Pour', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, tags) VALUES
  ('Give Back', 'Pay It Forward — Coffee', 3.00, TRUE, 'Your $3 covers a drink for someone who needs it. Left on account. Claimed with dignity.', ARRAY['community']),
  ('Give Back', 'Pay It Forward — Meal', 7.00, TRUE, 'Your $7 covers a full meal for someone who needs it. No questions asked.', ARRAY['community']),
  ('Give Back', 'Round Up for the Cause', 1.00, TRUE, '$1 goes directly to the local food bank. Small number. Real impact.', ARRAY['community']);