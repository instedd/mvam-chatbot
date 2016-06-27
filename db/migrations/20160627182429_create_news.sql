-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied

CREATE TABLE news (
  id BIGSERIAL PRIMARY KEY,
  country_code CHAR(2),
  message TEXT,
  sent_at TIMESTAMP DEFAULT NULL
);

-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back

DROP TABLE news;
