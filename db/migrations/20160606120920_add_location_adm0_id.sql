-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE locations_mkt ADD COLUMN location_adm0_id INTEGER REFERENCES "locations_adm0" (id);

UPDATE locations_mkt AS mkt
SET location_adm0_id = adm0.id
FROM locations_adm1 AS adm1
INNER JOIN locations_adm0 AS adm0
ON adm1.location_adm0_id = adm0.id
WHERE mkt.location_adm1_id = adm1.id;

-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back
ALTER TABLE locations_mkt DROP COLUMN location_adm0_id;
