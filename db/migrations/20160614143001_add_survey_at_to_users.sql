-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE users ADD COLUMN survey_at TIMESTAMP;
CREATE INDEX ON "users" (survey_at);

-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back
ALTER TABLE users DROP COLUMN survey_at;
