-- +goose Up
-- +goose StatementBegin
CREATE TABLE
  application (
    application_id CHAR(32) NOT NULL,
    job_id CHAR(32) NOT NULL,
    user_id CHAR(32) NOT NULL,
    status INT NOT NULL,
    applied_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (application_id),
    CONSTRAINT fk_job_id FOREIGN KEY (job_id) REFERENCES job (job_id),
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES user (user_id)
  );

-- +goose StatementEnd
-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS application;

-- +goose StatementEnd
