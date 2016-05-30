-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied

DROP TABLE message_logs;
DROP TABLE query_logs;
DROP TABLE callback_logs;

CREATE TABLE logs (
  id BIGSERIAL PRIMARY KEY,
  user_id INT REFERENCES "users" (id),
  kind VARCHAR(30),
  text VARCHAR(511),
  query_offset INT DEFAULT 0,
  answer VARCHAR(255),
  timestamp TIMESTAMP
);
