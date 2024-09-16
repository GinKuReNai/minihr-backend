-- +goose Up
-- +goose StatementBegin
CREATE TABLE
  user (
    user_id CHAR(32) NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    hash_password VARCHAR(64) NOT NULL,
    phone VARCHAR(16) NOT NULL,
    occupation INT NOT NULL,
    graduate_school VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id)
  );

-- +goose StatementEnd
-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS user;

-- +goose StatementEnd
