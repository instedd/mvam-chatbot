-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE EXTENSION IF NOT EXISTS postgis;


-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP EXTENSION postgis;
