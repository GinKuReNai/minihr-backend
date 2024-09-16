-- +goose Up
-- +goose StatementBegin
CREATE TABLE
  job (
    job_id CHAR(32) NOT NULL,
    company_id CHAR(32) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    location VARCHAR(255) NOT NULL,
    salary_type INT NOT NULL,
    income INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(job_id),
    CONSTRAINT fk_company_id FOREIGN KEY (company_id) REFERENCES company (company_id) ON DELETE CASCADE
  );

-- +goose StatementEnd
-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS job;

-- +goose StatementEnd
