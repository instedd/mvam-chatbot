-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied

CREATE TABLE news_contents (
  id BIGSERIAL PRIMARY KEY,
  country_code CHAR(2) NOT NULL,
  message TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL
);

CREATE TABLE news_subscriptions (
  id BIGSERIAL PRIMARY KEY,
  user_id INT REFERENCES "users" (id) NOT NULL,
  country_code CHAR(2) NOT NULL,
  UNIQUE(user_id, country_code)
);

CREATE TABLE news_deliveries (
  id BIGSERIAL PRIMARY KEY,
  content_id INT REFERENCES "news_contents" (id) NOT NULL,
  user_id INT REFERENCES "users" (id) NOT NULL,
  created_at TIMESTAMP NOT NULL
);

-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back

DROP TABLE news_deliveries;
DROP TABLE news_subscriptions;
DROP TABLE news_contents;
