CREATE TABLE supporters (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  location TEXT,
  image TEXT
);

CREATE TABLE donations (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  full_name TEXT,
  address TEXT,
  amount DECIMAL
);