-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE users ADD COLUMN gender VARCHAR(30);
ALTER TABLE users ADD COLUMN timezone INT;
ALTER TABLE users ADD COLUMN locale VARCHAR(30);
ALTER TABLE users ADD COLUMN facebook_psid VARCHAR(60);
ALTER TABLE users ADD COLUMN facebook_page_id VARCHAR(60);
ALTER TABLE users ADD COLUMN telegram_user_id INT;

CREATE INDEX ON "users" (facebook_psid);
CREATE INDEX ON "users" (telegram_user_id);

UPDATE users SET telegram_user_id = id;

CREATE SEQUENCE users_id_seq;
ALTER TABLE users ALTER COLUMN id SET NOT NULL;
ALTER TABLE users ALTER COLUMN id SET DEFAULT nextval('users_id_seq');
ALTER SEQUENCE users_id_seq OWNED BY users.id;

-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back
ALTER TABLE users DROP COLUMN gender;
ALTER TABLE users DROP COLUMN timezone;
ALTER TABLE users DROP COLUMN locale;
ALTER TABLE users DROP COLUMN facebook_psid;
ALTER TABLE users DROP COLUMN facebook_page_id;
ALTER TABLE users DROP COLUMN telegram_user_id;
