-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE bots (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  flow TEXT,
  page_id VARCHAR(255),
  access_token VARCHAR(255),
  locales VARCHAR(30)[],
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL
);

CREATE INDEX ON "bots" (page_id, locales);

-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE bots;
