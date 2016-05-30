-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied

CREATE TABLE prices_history (
  id BIGSERIAL PRIMARY KEY,
  price_id VARCHAR(30),
  location_adm0_id INT,
  location_adm1_id INT,
  location_mkt_id INT,
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

CREATE INDEX ON "prices_history" (price_id);

ALTER TABLE prices ALTER COLUMN id TYPE VARCHAR(30);
ALTER TABLE prices ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE prices_id_seq;
