-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied

CREATE TABLE files (
  id VARCHAR(100) PRIMARY KEY,
  user_id INT REFERENCES "users" (id),
  kind VARCHAR(30),
  extension VARCHAR(10),
  data BYTEA,
  timestamp TIMESTAMP
);

-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back

DROP TABLE files;
