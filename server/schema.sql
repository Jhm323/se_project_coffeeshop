-- reservations table
CREATE TABLE reservations (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  guests INT NOT NULL,
  date_time TIMESTAMP NOT NULL,
  email TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- menu items table
CREATE TABLE menu_items (
  id SERIAL PRIMARY KEY,
  category TEXT NOT NULL,
  name TEXT NOT NULL,
  price NUMERIC(6,2) NOT NULL,
  is_available BOOLEAN DEFAULT TRUE
);

-- contact messages table
CREATE TABLE contact_messages (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  message TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);