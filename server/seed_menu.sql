-- ============================================================
-- Triple Peaks Coffee Shop — Full Menu Seed
-- The most intentional menu ever committed to a database.
-- Run: psql -d coffee_shop -f seed_menu.sql
-- ============================================================

TRUNCATE TABLE menu_items RESTART IDENTITY;

-- ─── Coffee ──────────────────────────────────────────────────────────────────
INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Coffee', 'The Daily Grind', 2.50, TRUE, 'Straight drip. Black. No apologies. The coffee that clocks in before you do.', 'The Punchcard (Raw Flower)', ARRAY['vegan', 'gluten-free', 'hypoallergenic']),
  ('Coffee', 'Double Shift', 3.00, TRUE, 'Double shot espresso. For when the first shift runs straight into the second.', 'The Foreman (Blunt)', ARRAY['vegan', 'gluten-free', 'hypoallergenic']),
  ('Coffee', 'Use the Foam, Luke', 4.25, TRUE, 'Oat milk latte with a rosette pulled by someone who actually cares. May the foam be with you.', 'The Jedi Kush (Joint)', ARRAY['vegan', 'hypoallergenic', 'dairy-free']),
  ('Coffee', 'Order 66 (Decaf)', 3.75, TRUE, 'Decaf americano. Dark side energy without the tremors. Execute your afternoon with precision.', 'The Senator (Spliff)', ARRAY['vegan', 'gluten-free', 'hypoallergenic']),
  ('Coffee', 'The Kessel Pour', 4.50, TRUE, 'Single origin pour over. Made in under 12 parsecs. Bright, fruity, recklessly good.', 'Limonene Dreams (Raw Flower)', ARRAY['vegan', 'gluten-free', 'hypoallergenic']),
  ('Coffee', 'Blue Milk Flat White', 4.75, TRUE, 'Oat milk flat white. Creamy, smooth, pulled tight. Tatooine approved. Dairy never stood a chance.', 'Blue Dream Spliff', ARRAY['vegan', 'hypoallergenic', 'dairy-free']),
  ('Coffee', 'May the Cortado Be With You', 3.50, TRUE, 'Equal parts espresso and oat milk. Balance is not just a Jedi concept.', 'The Balanced Force (Pipe)', ARRAY['vegan', 'hypoallergenic', 'dairy-free']),
  ('Coffee', 'Solidarity Macchiato', 3.25, TRUE, 'Classic macchiato. A shot marked with foam. Union approved since the first harvest.', 'The Shop Steward (Joint)', ARRAY['vegan', 'gluten-free', 'hypoallergenic']);

-- ─── Tea ─────────────────────────────────────────────────────────────────────
INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Tea', 'The Force Chamomile', 2.00, TRUE, 'Pure chamomile. Calm that doesn''t ask permission. Hypoallergenic. Caffeine free. Just peace.', 'Myrcene Nightcap (Raw Flower)', ARRAY['vegan', 'gluten-free', 'hypoallergenic', 'caffeine-free']),
  ('Tea', 'Yoda''s Green', 2.25, TRUE, 'Sencha green tea. Earthy, grassy, ancient. 900 years of wisdom in a single steep.', 'Pinene Pipe Session', ARRAY['vegan', 'gluten-free', 'hypoallergenic']),
  ('Tea', 'Rebel Chai', 2.75, TRUE, 'Spiced oat milk chai. Cinnamon, cardamom, ginger. Warm enough to start a revolution.', 'The Spice Route (Spliff)', ARRAY['vegan', 'hypoallergenic', 'dairy-free']),
  ('Tea', 'Earl of the Republic', 2.00, TRUE, 'Earl grey with bergamot. Citrusy, floral, dignified. The people''s earl.', 'Limonene Joint', ARRAY['vegan', 'gluten-free', 'hypoallergenic']),
  ('Tea', 'Peppermint Rebellion', 2.00, TRUE, 'Pure peppermint. Cold, clean, clarifying. Caffeine free. The clearest head in the room.', 'Terpinolene Raw Flower', ARRAY['vegan', 'gluten-free', 'hypoallergenic', 'caffeine-free']);

-- ─── Cold Drinks ─────────────────────────────────────────────────────────────
INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Cold Drinks', 'Iced & Employed', 3.50, TRUE, 'Iced oat latte. Cold comfort for the overworked. Poured over ice like a small mercy.', 'Lemon Haze Joint', ARRAY['vegan', 'hypoallergenic', 'dairy-free']),
  ('Cold Drinks', 'Cold Brew Coup', 3.75, TRUE, 'Slow steeped 18 hours. Smooth, dark, patient. Revolutions take time.', 'The Overthrower (Blunt)', ARRAY['vegan', 'gluten-free', 'hypoallergenic']),
  ('Cold Drinks', 'The Hoth Blend', 4.00, TRUE, 'Frozen oat milk mocha. Icy, rich, relentless. Dairy free. Served at subzero conviction.', 'Chocolate OG (Pipe)', ARRAY['vegan', 'hypoallergenic', 'dairy-free']),
  ('Cold Drinks', 'Sparkling Resistance', 2.50, TRUE, 'Sparkling water with house-pressed citrus. Simple. Clean. Still here.', 'Citrus Haze Spliff', ARRAY['vegan', 'gluten-free', 'hypoallergenic']),
  ('Cold Drinks', 'Phantom Lemonade', 2.75, TRUE, 'House lemonade. Menacingly good. Always there. Always watching.', 'Limonene Raw Flower', ARRAY['vegan', 'gluten-free', 'hypoallergenic']);

-- ─── Baked Goods ─────────────────────────────────────────────────────────────
INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Baked Goods', 'The Workhorse Scone', 2.50, TRUE, 'Oat and raisin. Dairy free. Dense, honest, holds up to the longest shift.', 'The Daily Grind + The Punchcard (Raw Flower)', ARRAY['vegan', 'dairy-free']),
  ('Baked Goods', 'Almond Joy Croissant', 3.25, TRUE, 'Almond frangipane croissant. Buttery, layered, worth every flake. Contains tree nuts.', 'Use the Foam Luke + Blue Dream Spliff', ARRAY['contains-nuts']),
  ('Baked Goods', 'Chewbacca Brownie', 3.00, TRUE, 'Gluten free chocolate brownie. Dense as the Wookiee himself. Speaks for itself.', 'The Hoth Blend + Chocolate OG (Pipe)', ARRAY['gluten-free', 'dairy-free']),
  ('Baked Goods', 'Banana Solidarity Bread', 2.75, TRUE, 'Banana bread. No dairy. No pretension. Just warmth and a good cause.', 'The Force Chamomile + Myrcene Nightcap (Raw Flower)', ARRAY['vegan', 'dairy-free']),
  ('Baked Goods', 'R2-Tea-Cakes', 2.25, TRUE, 'Oat and lemon tea cakes. Vegan. Small, bright, beep-boop delicious.', 'Earl of the Republic + Limonene Joint', ARRAY['vegan', 'dairy-free']),
  ('Baked Goods', 'Love & A Cookie', 1.50, TRUE, 'A simple sugar cookie. Because sometimes love is the only ingredient that matters.', 'Anything. Everything. Just breathe.', ARRAY['vegan']);

-- ─── Light Food ──────────────────────────────────────────────────────────────
INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Light Food', 'The Clock-In Wrap', 6.50, TRUE, 'Hummus, roasted red pepper, arugula, cucumber. Vegan. Hits like a first paycheck.', 'Double Shift + The Foreman (Blunt)', ARRAY['vegan', 'dairy-free']),
  ('Light Food', 'Han''s Solo Avocado Toast', 6.00, TRUE, 'Avocado, everything seasoning, hemp seeds, lemon. Shoots first. Tastes better.', 'Yoda''s Green + Pinene Pipe Session', ARRAY['vegan', 'dairy-free']),
  ('Light Food', 'The Overtime Bagel', 5.50, TRUE, 'Everything bagel with dairy free schmear and cucumber. You''ve earned it.', 'Solidarity Macchiato + The Shop Steward (Joint)', ARRAY['vegan', 'dairy-free']),
  ('Light Food', 'Death Star Grain Bowl', 7.25, TRUE, 'Quinoa, roasted chickpeas, beets, tahini, microgreens. Destructive levels of nutrition.', 'Peppermint Rebellion + Terpinolene Raw Flower', ARRAY['vegan', 'gluten-free', 'dairy-free']),
  ('Light Food', 'A New Hop Salad', 6.75, TRUE, 'Seasonal greens, shaved fennel, radish, lemon vinaigrette. A disturbance in the force — of flavor.', 'The Kessel Pour + Limonene Dreams (Raw Flower)', ARRAY['vegan', 'gluten-free', 'dairy-free']);

-- ─── The Reserve ──────────────────────────────────────────────────────────
INSERT INTO menu_items (category, name, price, is_available, description, pairing, terpenes, format, tags) VALUES
  ('The Greenhouse', 'The Punchcard', 12.00, TRUE, 'Earthy, woodsy, grounding. Myrcene forward with a hint of black pepper. The strain of the working class. Clocks in, never clocks out.', 'The Daily Grind — the bitterness cuts right through the earthiness and opens everything up.', 'Myrcene, Caryophyllene, Pinene', 'Raw Flower', ARRAY['hypoallergenic']),
  ('The Greenhouse', 'Limonene Dreams', 14.00, TRUE, 'Bright citrus, lemon rind, fresh cut grass. Sativa leaning. Makes the pour over taste like sunlight.', 'The Kessel Pour — single origin fruit notes and limonene are the same frequency.', 'Limonene, Terpinolene, Ocimene', 'Raw Flower', ARRAY['hypoallergenic']),
  ('The Greenhouse', 'Myrcene Nightcap', 13.00, TRUE, 'Mango, tropical, deeply sedating. The last thing before the lights go out. Soft landing.', 'The Force Chamomile — chamomile''s apigenin and myrcene''s sedation are a love story.', 'Myrcene, Linalool, Bisabolol', 'Raw Flower', ARRAY['hypoallergenic']),
  ('The Greenhouse', 'Terpinolene Raw Flower', 13.00, TRUE, 'Fresh, piney, floral, slightly herbal. The most underrated terpene. Pairs with anything clean.', 'Peppermint Rebellion — two clean profiles, one clear head.', 'Terpinolene, Ocimene, Myrcene', 'Raw Flower', ARRAY['hypoallergenic']),
  ('The Greenhouse', 'The Balanced Force', 10.00, TRUE, 'Hybrid. Equal indica and sativa energy. Like a cortado — neither side wins, both sides thrive.', 'May the Cortado Be With You — balance meets balance. The Force approves.', 'Caryophyllene, Myrcene, Limonene', 'Pipe', ARRAY['hypoallergenic']),
  ('The Greenhouse', 'Pinene Pipe Session', 10.00, TRUE, 'Sharp pine, forest floor, clarity. Alpha-pinene opens the lungs, opens the mind.', 'Yoda''s Green — pine and sencha share the same ancient forest.', 'Alpha-Pinene, Beta-Pinene, Terpinolene', 'Pipe', ARRAY['hypoallergenic']),
  ('The Greenhouse', 'Chocolate OG', 11.00, TRUE, 'Rich cocoa, coffee, dark earth. Indica dominant. Hits like a slow exhale after a long week.', 'The Hoth Blend — frozen mocha and chocolate OG is the dessert course you didn''t know you needed.', 'Myrcene, Caryophyllene, Linalool', 'Pipe', ARRAY['hypoallergenic']),
  ('The Greenhouse', 'The Jedi Kush', 15.00, TRUE, 'Pure flower, rice paper, twisted tip. Floral and earthy with a creamy finish. Rolled with intention.', 'Use the Foam Luke — oat milk latte softens the kush and the kush amplifies the latte. A loop of warmth.', 'Linalool, Myrcene, Caryophyllene', 'Joint', ARRAY['hypoallergenic']),
  ('The Greenhouse', 'Limonene Joint', 15.00, TRUE, 'Citrus forward flower, clean rice paper, no tobacco. Bright on the inhale, clean on the exhale.', 'Earl of the Republic — bergamot and limonene, two citrus forces walking the same road.', 'Limonene, Terpinolene, Pinene', 'Joint', ARRAY['hypoallergenic']),
  ('The Greenhouse', 'The Shop Steward', 15.00, TRUE, 'Robust, earthy, dependable. Rolled clean. The joint that shows up on time and stays late.', 'Solidarity Macchiato — espresso and caryophyllene have been negotiating flavor since the first harvest.', 'Caryophyllene, Myrcene, Humulene', 'Joint', ARRAY['hypoallergenic']),
  ('The Greenhouse', 'The Senator', 13.00, TRUE, 'Flower and light tobacco. Slow burning. Deliberate. Dark, direct, no distractions.', 'Order 66 (Decaf) — decaf''s roast depth plus tobacco''s smokiness. The dark side never smelled this good.', 'Myrcene, Caryophyllene, Guaiol', 'Spliff', ARRAY[]::text[]),
  ('The Greenhouse', 'Blue Dream Spliff', 13.00, TRUE, 'Blueberry forward flower with light Virginia tobacco. The tobacco lifts the berry notes without overwhelming.', 'Blue Milk Flat White — blueberry terpenes and oat milk flatness is the most gentle pairing on this menu.', 'Myrcene, Caryophyllene, Pinene', 'Spliff', ARRAY[]::text[]),
  ('The Greenhouse', 'The Spice Route', 13.00, TRUE, 'Caryophyllene heavy with pepper and clove, blended with light tobacco. Intentional from first light to last draw.', 'Rebel Chai — caryophyllene IS the spice. This pairing is not a suggestion. It is a revelation.', 'Caryophyllene, Humulene, Myrcene', 'Spliff', ARRAY[]::text[]),
  ('The Greenhouse', 'Citrus Haze Spliff', 13.00, TRUE, 'Haze-forward citrus flower with light tobacco. Energetic, uplifting, effervescent.', 'Sparkling Resistance — citrus on citrus, bubbles meeting limonene. The lightest pairing on the menu.', 'Limonene, Terpinolene, Pinene', 'Spliff', ARRAY[]::text[]),
  ('The Greenhouse', 'The Foreman', 18.00, TRUE, 'Full gram. Natural leaf wrap. Slow burn. The blunt that runs the whole job site.', 'Double Shift — a double shot and a full gram. For the person who is not here to play.', 'Myrcene, Caryophyllene, Linalool', 'Blunt', ARRAY[]::text[]),
  ('The Greenhouse', 'The Overthrower', 18.00, TRUE, 'Full gram, dark natural wrap, slow patient burn. Like cold brew — 18 hours in the making, gone in 45 minutes.', 'Cold Brew Coup — slow process, big payoff, shared ideology.', 'Myrcene, Ocimene, Caryophyllene', 'Blunt', ARRAY[]::text[]);

-- ─── Give Back ───────────────────────────────────────────────────────────────
INSERT INTO menu_items (category, name, price, is_available, description, tags) VALUES
  ('Give Back', 'Pay It Forward — Coffee', 3.00, TRUE, 'Your $3 covers a drink for someone who needs it. Left on account. Claimed with dignity.', ARRAY['community']),
  ('Give Back', 'Pay It Forward — Meal', 7.00, TRUE, 'Your $7 covers a full meal for someone who needs it. No questions asked.', ARRAY['community']),
  ('Give Back', 'Round Up for the Cause', 1.00, TRUE, '$1 goes directly to the local food bank. Small number. Real impact.', ARRAY['community']);