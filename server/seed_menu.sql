TRUNCATE TABLE menu_items RESTART IDENTITY;

INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Coffee', 'The Daily Grind', 2.50, TRUE, 'Straight drip. Black. No apologies. The coffee that clocks in before you do.', 'The Punchcard (Raw Flower)', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Double Shift', 3.00, TRUE, 'Double shot espresso. For when the first shift runs straight into the second.', 'The Foreman (Blunt)', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Use the Foam, Luke', 4.25, TRUE, 'Oat milk latte with a rosette pulled by someone who actually cares. May the foam be with you.', 'The Jedi Kush (Joint)', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Order 66 (Decaf)', 3.75, TRUE, 'Decaf oat milk americano. Dark side energy without the tremors. Execute your afternoon with precision.', 'The Senator (Spliff)', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'The Kessel Pour', 4.50, TRUE, 'Single origin pour over. Made in under 12 parsecs. Bright, fruity, recklessly good.', 'Limonene Dreams (Raw Flower)', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Blue Milk Flat White', 4.75, TRUE, 'Oat milk flat white. Creamy, smooth, pulled tight. Tatooine approved.', 'Blue Dream Spliff', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'May the Cortado Be With You', 3.50, TRUE, 'Equal parts espresso and oat milk. Balance is not just a Jedi concept.', 'The Balanced Force (Pipe)', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Coffee', 'Solidarity Macchiato', 3.25, TRUE, 'Classic macchiato marked with oat milk foam. Union approved since the first harvest.', 'The Shop Steward (Joint)', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Tea', 'The Force Chamomile', 2.00, TRUE, 'Pure chamomile. Calm that doesn''t ask permission. Caffeine free. Just peace.', 'Myrcene Nightcap (Raw Flower)', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free', 'caffeine-free']),
  ('Tea', 'Yoda''s Green', 2.25, TRUE, 'Sencha green tea. Earthy, grassy, ancient. 900 years of wisdom in a single steep.', 'Pinene Pipe Session', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Tea', 'Rebel Chai', 2.75, TRUE, 'Spiced oat milk chai. Cinnamon, cardamom, ginger. Warm enough to start a revolution.', 'The Spice Route (Spliff)', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Tea', 'Earl of the Republic', 2.00, TRUE, 'Earl grey with bergamot. Citrusy, floral, dignified. The people''s earl.', 'Limonene Joint', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Tea', 'Peppermint Rebellion', 2.00, TRUE, 'Pure peppermint. Cold, clean, clarifying. Caffeine free. The clearest head in the room.', 'Terpinolene Raw Flower', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free', 'caffeine-free']);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, tags) VALUES
  ('Cold Drinks', 'Iced & Employed', 3.50, TRUE, 'Iced oat milk latte. Cold comfort for the overworked. Poured over ice like a small mercy.', 'Lemon Haze Joint', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'Cold Brew Coup', 3.75, TRUE, 'Slow steeped 18 hours. Smooth, dark, patient. Revolutions take time.', 'The Overthrower (Blunt)', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'The Hoth Blend', 4.00, TRUE, 'Frozen oat milk mocha. Icy, rich, relentless. Served at subzero conviction.', 'Chocolate OG (Pipe)', ARRAY['vegan', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'Sparkling Resistance', 2.50, TRUE, 'Sparkling water with house-pressed citrus. Simple. Clean. Still here.', 'Citrus Haze Spliff', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('Cold Drinks', 'Phantom Lemonade', 2.75, TRUE, 'House lemonade. Menacingly good. Always there. Always watching.', 'Limonene Raw Flower', ARRAY['vegan', 'gluten-free', 'nut-free', 'dairy-free', 'soy-free', 'egg-free']);

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

INSERT INTO menu_items (category, name, price, is_available, description, pairing, terpenes, format, tags) VALUES
  ('The Reserve', 'The Force Multiplier', 5.00, TRUE, '5mg THC citrus tincture. Tasteless. Dissolves clean. Limonene forward. Add it to anything.', 'Pairs best with The Kessel Pour, Earl of the Republic, or Yoda''s Green.', 'Limonene, Terpinolene', 'THC Infusion — Add to Any Drink', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, terpenes, format, tags) VALUES
  ('The Reserve', 'The Red Eye Act', 7.00, TRUE, '10mg THC sparkling cold brew. One shot espresso, cold brew base. Slow onset. Long ride.', 'The Solidarity Brownie — chocolate and THC cold brew is a closed loop.', 'Myrcene, Caryophyllene, Ocimene', 'THC Drinkable', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('The Reserve', 'The Lemon Haze Fizz', 6.00, TRUE, '10mg THC sparkling lemonade. The most dangerous thing that has ever looked this innocent.', 'Han''s Solo Avocado Toast — citrus and hemp seeds.', 'Limonene, Terpinolene, Ocimene', 'THC Drinkable', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('The Reserve', 'Blue Milk Rising', 6.50, TRUE, '5mg THC oat milk cold brew. Smooth, creamy, blue dream terpene profile. This is the way.', 'The Rebellion Muffin — blueberry and blue dream terpenes share the same origin story.', 'Myrcene, Pinene, Caryophyllene', 'THC Drinkable', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, terpenes, format, tags) VALUES
  ('The Reserve', 'The Cortado Hit', 9.00, TRUE, 'Single bowl of hybrid flower. Earthy, balanced, neither too up nor too down.', 'May the Cortado Be With You — equal energy, equal calm.', 'Caryophyllene, Myrcene, Limonene', 'Small Bowl — In-House', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('The Reserve', 'The Red Eye Bowl', 10.00, TRUE, 'Single bowl of high-myrcene indica. Dense, earthy, full body. For the person who meant it.', 'Double Shift — double espresso and a heavy indica bowl.', 'Myrcene, Caryophyllene, Linalool', 'Small Bowl — In-House', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, terpenes, format, tags) VALUES
  ('The Reserve', 'The Jedi Kush', 7.00, TRUE, 'Pure flower, rice paper, twisted tip. Floral and earthy. Rolled with intention.', 'Use the Foam Luke — oat milk latte and kush. A loop of warmth.', 'Linalool, Myrcene, Caryophyllene', 'Joint — In-House', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('The Reserve', 'The Shop Steward', 7.00, TRUE, 'Robust, earthy, dependable. Rolled clean. Shows up on time and stays late.', 'Solidarity Macchiato — espresso and caryophyllene, negotiating since the first harvest.', 'Caryophyllene, Myrcene, Humulene', 'Joint — In-House', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, terpenes, format, tags) VALUES
  ('The Reserve', 'The Senator', 5.00, TRUE, 'Half gram flower, light Virginia tobacco, slow burn. Dark, deliberate, no distractions.', 'Order 66 Decaf — same darkness, different angles.', 'Myrcene, Caryophyllene, Guaiol', 'Spliff — In-House', ARRAY[]::text[]),
  ('The Reserve', 'The Spice Route', 5.00, TRUE, 'Caryophyllene-heavy flower with light tobacco. Pepper, clove, warmth.', 'Rebel Chai — caryophyllene IS the spice. This is a convergence.', 'Caryophyllene, Humulene, Myrcene', 'Spliff — In-House', ARRAY[]::text[]);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, terpenes, format, tags) VALUES
  ('The Reserve', 'The Half Shift', 11.00, TRUE, 'Half gram in a natural palm leaf wrap. Slow, even burn. For the second half of the day.', 'Cold Brew Coup — patience and slow burn are the same philosophy.', 'Myrcene, Caryophyllene, Linalool', 'Half Blunt — In-House', ARRAY[]::text[]),
  ('The Reserve', 'The Foreman Jr.', 12.00, TRUE, 'Half gram OG in a dark natural wrap. Heavy indica, molasses finish.', 'Double Shift — double espresso and half a blunt. The infrastructure of the afternoon.', 'Myrcene, Ocimene, Caryophyllene', 'Half Blunt — In-House', ARRAY[]::text[]);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, terpenes, format, tags) VALUES
  ('The Reserve', 'The DIY Droid', 8.00, TRUE, 'Half gram house flower, rice papers, filter tips, rolling tray. Everything you need. Nothing you don''t.', 'Any coffee or tea. The drink waits.', 'Varies by daily selection', 'Roll Your Own — In-House Kit', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('The Reserve', 'The Rebel Kit', 12.00, TRUE, 'Full gram sativa-leaning flower, hemp papers, glass tips, rolling tray, terpene card.', 'The Kessel Pour or Iced and Employed. The morning that earns the afternoon.', 'Limonene, Terpinolene, Ocimene', 'Roll Your Own — Full Kit', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, pairing, terpenes, format, tags) VALUES
  ('The Reserve', 'The Punchcard (Take Home)', 15.00, TRUE, '3.5g earthy myrcene-forward indica. Lab tested. Terpene labeled. Resealable kraft pouch.', 'The Daily Grind at home. Brew your own, load your own, earn your own evening.', 'Myrcene, Caryophyllene, Pinene', 'Take Home — 3.5g Flower', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('The Reserve', 'Limonene Dreams (Take Home)', 16.00, TRUE, '3.5g citrus sativa. The strain that makes pour overs taste like sunlight.', 'Brew The Kessel Pour at home. Add Limonene Dreams. Report back.', 'Limonene, Terpinolene, Ocimene', 'Take Home — 3.5g Flower', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('The Reserve', 'The Night Shift (Take Home)', 15.00, TRUE, '3.5g linalool-forward indica. Floral, sedating. The last chapter of the day.', 'The Force Chamomile at home — steep the chamomile, pack the bowl, let the day go.', 'Linalool, Myrcene, Bisabolol', 'Take Home — 3.5g Flower', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('The Reserve', 'The Two-Pack Pre-Roll', 10.00, TRUE, 'Two half-gram pre-rolls in a glass tube. House hybrid. Balanced, dependable, rolled tight.', 'One for the morning cold brew. One for the evening. You know which is which.', 'Caryophyllene, Myrcene, Limonene', 'Take Home — Pre-Roll 2-Pack', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']),
  ('The Reserve', 'The Solidarity Tincture (Take Home)', 18.00, TRUE, '250mg full spectrum CBD + 25mg THC in MCT oil. 30 servings. The long game.', 'Add to any morning coffee at home. The Daily Grind becomes something more.', 'Myrcene, Caryophyllene, Linalool', 'Take Home — Tincture 30ml', ARRAY['nut-free', 'dairy-free', 'soy-free', 'egg-free']);

INSERT INTO menu_items (category, name, price, is_available, description, tags) VALUES
  ('Give Back', 'Pay It Forward — Coffee', 3.00, TRUE, 'Your $3 covers a drink for someone who needs it. Left on account. Claimed with dignity.', ARRAY['community']),
  ('Give Back', 'Pay It Forward — Meal', 7.00, TRUE, 'Your $7 covers a full meal for someone who needs it. No questions asked.', ARRAY['community']),
  ('Give Back', 'Round Up for the Cause', 1.00, TRUE, '$1 goes directly to the local food bank. Small number. Real impact.', ARRAY['community']);