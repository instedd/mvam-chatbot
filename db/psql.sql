CREATE EXTENSION citext;

CREATE TABLE locations_adm0 (
  id INT PRIMARY KEY,
  name CITEXT NOT NULL
);

CREATE INDEX ON "locations_adm0" (name);

CREATE TABLE locations_adm1 (
  id INT PRIMARY KEY,
  name CITEXT NOT NULL,
  location_adm0_id INT REFERENCES "locations_adm0" (id)
);

CREATE INDEX ON "locations_adm1" (name);
CREATE INDEX ON "locations_adm1" (location_adm0_id);
CREATE INDEX ON "locations_adm1" (location_adm0_id, name);

CREATE TABLE locations_mkt (
  id INT PRIMARY KEY,
  name CITEXT NOT NULL,
  location_adm1_id INT REFERENCES "locations_adm1" (id)
);

CREATE INDEX ON "locations_mkt" (name);
CREATE INDEX ON "locations_mkt" (location_adm1_id);
CREATE INDEX ON "locations_mkt" (location_adm1_id, name);

CREATE TABLE users (
  id INT PRIMARY KEY,
  username VARCHAR(255) UNIQUE,
  name VARCHAR(255),
  location_adm0_id INT REFERENCES "locations_adm0" (id),
  location_adm1_id INT REFERENCES "locations_adm1" (id),
  location_mkt_id INT REFERENCES "locations_mkt" (id),
  location_lat FLOAT,
  location_lng FLOAT,
  conversation_step VARCHAR(255),
  conversation_at TIMESTAMP,
  conversation_session_id VARCHAR(255),
);

CREATE TABLE prices (
  id BIGSERIAL PRIMARY KEY,
  location_adm0_id INT REFERENCES "locations_adm0" (id),
  location_adm1_id INT REFERENCES "locations_adm1" (id),
  location_mkt_id INT REFERENCES "locations_mkt" (id),
  commodity_id INT,
  commodity_name CITEXT,
  currency_id INT,
  currency_name VARCHAR(30),
  unit_id INT,
  unit_name VARCHAR(30),
  month INT,
  year INT,
  price DOUBLE PRECISION
);

-- TODO: Check index type for running full text search or prefix search in lowercase
CREATE INDEX ON "prices" (location_mkt_id, commodity_name);

CREATE TABLE message_logs (
  id BIGSERIAL PRIMARY KEY,
  user_id INT REFERENCES "users" (id),
  is_outgoing BOOLEAN DEFAULT FALSE,
  text VARCHAR(511),
  timestamp TIMESTAMP
);

CREATE TABLE query_logs (
  id BIGSERIAL PRIMARY KEY,
  user_id INT REFERENCES "users" (id),
  query VARCHAR(255),
  query_offset INT DEFAULT 0,
  answer_size INT DEFAULT 0,
  answer_pm_text VARCHAR(255),
  timestamp TIMESTAMP
);

CREATE TABLE callback_logs (
  id BIGSERIAL PRIMARY KEY,
  user_id INT REFERENCES "users" (id),
  data VARCHAR(255),
  answer VARCHAR(255),
  timestamp TIMESTAMP
);
