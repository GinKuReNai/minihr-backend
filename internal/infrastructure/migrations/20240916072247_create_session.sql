-- +goose Up
-- +goose StatementBegin
CREATE TABLE
  session (
    id INT AUTO_INCREMENT,
    session_id VARCHAR(255) UNIQUE NOT NULL,
    user_id CHAR(32) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT fk_session_user_id FOREIGN KEY (user_id) REFERENCES user (user_id)
  );

-- +goose StatementEnd
-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS session;

-- +goose StatementEnd
