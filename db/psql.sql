CREATE TABLE locations_adm0 (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE INDEX ON "locations_adm0" (name);

CREATE TABLE locations_adm1 (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  location_adm0_id INT REFERENCES "locations_adm0" (id)
);

CREATE INDEX ON "locations_adm1" (name);
CREATE INDEX ON "locations_adm1" (location_adm0_id);
CREATE INDEX ON "locations_adm1" (location_adm0_id, name);

CREATE TABLE locations_mkt (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  location_adm1_id INT REFERENCES "locations_adm1" (id)
);

CREATE INDEX ON "locations_mkt" (name);
CREATE INDEX ON "locations_mkt" (location_adm1_id);
CREATE INDEX ON "locations_mkt" (location_adm1_id, name);

CREATE TABLE users (
  id BIGINT PRIMARY KEY,
  username VARCHAR(255) UNIQUE,
  name VARCHAR(255),
  location_adm0_id INT REFERENCES "locations_adm0" (id),
  location_adm1_id INT REFERENCES "locations_adm1" (id),
  location_mkt_id INT REFERENCES "locations_mkt" (id),
  location_lat FLOAT,
  location_lng FLOAT
);
