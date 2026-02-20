-- ========================================
-- Initial schema for Lowdef Pirate Panel
-- ========================================

-- Table pour les entrées
CREATE TABLE IF NOT EXISTS entries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  pub TEXT,
  date TEXT,
  custom_datetime TEXT
);

-- Table pour les shows
CREATE TABLE IF NOT EXISTS shows (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  desc TEXT,
  url TEXT,
  type TEXT,
  date_added TEXT,
  last_update TEXT,
  bitrate INTEGER,
  source TEXT
);

-- Table pour les abonnés / utilisateurs
CREATE TABLE IF NOT EXISTS subscribers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE,
  password TEXT
);

-- Table pour les logs (optionnel selon tuto)
CREATE TABLE IF NOT EXISTS logs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  action TEXT,
  user TEXT,
  date TEXT
);

-- Table pour les catégories ou types (si présent dans tuto)
CREATE TABLE IF NOT EXISTS categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);

-- Table pour les paramètres généraux du panel
CREATE TABLE IF NOT EXISTS settings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  key TEXT UNIQUE,
  value TEXT
);

-- Insérer un show “Welcome” par défaut
INSERT INTO shows (title, type, bitrate, source, date_added)
VALUES ('Welcome', 'T', 0, 'system', datetime('now'));

-- Insérer un utilisateur admin par défaut
INSERT INTO subscribers (username, password)
VALUES ('admin', 'admin');

-- Insérer quelques settings de base (optionnel selon tuto)
INSERT INTO settings (key, value) VALUES ('theme', 'default');
INSERT INTO settings (key, value) VALUES ('maintenance', '0');

-- ========================================
-- Fin du script initial
-- ========================================
