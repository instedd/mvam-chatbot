-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied

CREATE TABLE survey_responses (
  id BIGSERIAL PRIMARY KEY,
  user_id INT REFERENCES "users" (id),
  session_id VARCHAR(40) UNIQUE,
  data TEXT,
  completed BOOLEAN DEFAULT FALSE,
  timestamp TIMESTAMP
);

CREATE INDEX ON "survey_responses" (user_id);
CREATE INDEX ON "survey_responses" (session_id);
