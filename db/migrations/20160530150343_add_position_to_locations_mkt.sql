-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE locations_mkt ADD COLUMN position geometry(POINT,4326);

-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back
ALTER TABLE locations_mkt DROP COLUMN position;
