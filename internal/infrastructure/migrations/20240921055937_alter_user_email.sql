-- +goose Up
-- +goose StatementBegin
ALTER TABLE user ADD UNIQUE (email);

-- +goose StatementEnd
-- +goose Down
-- +goose StatementBegin

-- +goose StatementEnd
