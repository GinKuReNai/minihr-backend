-- +goose Up
-- +goose StatementBegin
CREATE TABLE
  company (
    company_id CHAR(32) NOT NULL,
    email VARCHAR(255) NOT NULL,
    hash_password VARCHAR(64) NOT NULL,
    address VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(company_id)
  );

-- +goose StatementEnd
-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS company;

-- +goose StatementEnd
