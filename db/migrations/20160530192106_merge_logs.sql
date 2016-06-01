-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied

CREATE TABLE logs (
  id BIGSERIAL PRIMARY KEY,
  user_id INT REFERENCES "users" (id),
  kind VARCHAR(30),
  text VARCHAR(511),
  query_offset INT DEFAULT 0,
  answer VARCHAR(255),
  answer_size INT,
  timestamp TIMESTAMP
);

INSERT INTO logs (user_id, kind, text, query_offset, answer, answer_size, timestamp)
SELECT user_id, (CASE is_outgoing WHEN true THEN 'OutgoingMessage' ELSE 'IncomingMessage' END), text, NULL, NULL, NULL, timestamp
FROM message_logs;

INSERT INTO logs (user_id, kind, text, query_offset, answer, answer_size, timestamp)
SELECT user_id, 'Query', query, query_offset, NULL, answer_size, timestamp
FROM query_logs;

INSERT INTO logs (user_id, kind, text, query_offset, answer, answer_size, timestamp)
SELECT user_id, 'Callback', data, NULL, answer, NULL, timestamp
FROM callback_logs;

DROP TABLE message_logs;
DROP TABLE query_logs;
DROP TABLE callback_logs;
