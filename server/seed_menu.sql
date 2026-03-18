TRUNCATE TABLE menu_items RESTART IDENTITY;

INSERT INTO menu_items (category, name, price, is_available, description, tags) VALUES
  ('Coffee', 'The Daily Grind', 2.50, TRUE, 'Straight drip. Black. No apologies. The coffee that clocks in before you do.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Double Shift', 3.00, TRUE, 'Double shot espresso. For when the first shift runs straight into the second.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Use the Foam, Luke', 4.25, TRUE, 'Oat milk latte with a rosette pulled by someone who actually cares. May the foam be with you.', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Order 66 (Decaf)', 3.75, TRUE, 'Decaf oat milk americano. Dark side energy without the tremors. Execute your afternoon with precision.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'The Kessel Pour', 4.50, TRUE, 'Single origin pour over. Made in under 12 parsecs. Bright, fruity, recklessly good.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Blue Milk Flat White', 4.75, TRUE, 'Oat milk flat white. Creamy, smooth, pulled tight. Tatooine approved.', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'May the Cortado Be With You', 3.50, TRUE, 'Equal parts espresso and oat milk. Balance is not just a Jedi concept.', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Solidarity Macchiato', 3.25, TRUE, 'Classic macchiato marked with oat milk foam. Union approved since the first harvest.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, tags) VALUES
  ('Tea', 'The Force Chamomile', 2.00, TRUE, 'Pure chamomile. Calm that doesn''t ask permission. Caffeine free. Just peace.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free', 'caffeine-free']),
  ('Tea', 'Yoda''s Green', 2.25, TRUE, 'Sencha green tea. Earthy, grassy, ancient. 900 years of wisdom in a single steep.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Tea', 'Rebel Chai', 2.75, TRUE, 'Spiced oat milk chai. Cinnamon, cardamom, ginger. Warm enough to start a revolution.', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Tea', 'Earl of the Republic', 2.00, TRUE, 'Earl grey with bergamot. Citrusy, floral, dignified. The people''s earl.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Tea', 'Peppermint Rebellion', 2.00, TRUE, 'Pure peppermint. Cold, clean, clarifying. Caffeine free. The clearest head in the room.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free', 'caffeine-free']);

INSERT INTO menu_items (category, name, price, is_available, description, tags) VALUES
  ('Cold Drinks', 'Iced & Employed', 3.50, TRUE, 'Iced oat milk latte. Cold comfort for the overworked. Poured over ice like a small mercy.', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'Cold Brew Coup', 3.75, TRUE, 'Slow steeped 18 hours. Smooth, dark, patient. Revolutions take time.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'The Hoth Blend', 4.00, TRUE, 'Frozen oat milk mocha. Icy, rich, relentless. Served at subzero conviction.', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'Sparkling Resistance', 2.50, TRUE, 'Sparkling water with house-pressed citrus. Simple. Clean. Still here.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'Phantom Lemonade', 2.75, TRUE, 'House lemonade. Menacingly good. Always there. Always watching.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, tags) VALUES
  ('Baked Goods', 'The Workhorse Scone', 2.50, TRUE, 'Oat flour and raisin scone. Dense, honest. Made with avocado vegetable butter and egg replacer.', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Baked Goods', 'The Solidarity Brownie', 3.00, TRUE, 'Dark chocolate brownie. Oat flour, egg replacer, avocado vegetable butter. Fudgy, rich, gluten free.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Baked Goods', 'Banana Solidarity Bread', 2.75, TRUE, 'Banana bread. Oat flour and egg replacer. No dairy. No pretension. Just warmth.', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Baked Goods', 'R2-Tea-Cakes', 2.25, TRUE, 'Oat and lemon tea cakes. Rice milk and avocado vegetable butter. Small, bright, beep-boop delicious.', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Baked Goods', 'The Rebellion Muffin', 2.50, TRUE, 'Blueberry oat muffin. Egg replacer, oat flour, avocado vegetable butter. Rises every morning.', 'Yoda''s Green', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Baked Goods', 'Love & A Cookie', 1.50, TRUE, 'A simple oat and raisin cookie. Because sometimes love is the only ingredient that matters.', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, tags) VALUES
  ('Light Food', 'The Clock-In Wrap', 6.50, TRUE, 'Hummus, roasted red pepper, arugula, cucumber, pickled onion in a rice flour wrap.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Light Food', 'Han''s Solo Avocado Toast', 6.00, TRUE, 'Avocado on gluten free sourdough. Everything seasoning, hemp seeds, lemon.', 'Yoda''s Green', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Light Food', 'The Overtime Bagel', 5.50, TRUE, 'Gluten free everything bagel with sunflower seed schmear and cucumber.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Light Food', 'Death Star Grain Bowl', 7.25, TRUE, 'Quinoa, roasted chickpeas, beets, lemon dressing, microgreens. Destructive levels of nutrition.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Light Food', 'A New Hop Salad', 6.75, TRUE, 'Seasonal greens, shaved fennel, radish, cucumber, hemp seeds, lemon vinaigrette.', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, tags) VALUES
  ('Give Back', 'Pay It Forward — Coffee', 3.00, TRUE, 'Your $3 covers a drink for someone who needs it. Left on account. Claimed with dignity.', ARRAY['community']),
  ('Give Back', 'Pay It Forward — Meal', 7.00, TRUE, 'Your $7 covers a full meal for someone who needs it. No questions asked.', ARRAY['community']),
  ('Give Back', 'Round Up for the Cause', 1.00, TRUE, '$1 goes directly to the local food bank. Small number. Real impact.', ARRAY['community']);