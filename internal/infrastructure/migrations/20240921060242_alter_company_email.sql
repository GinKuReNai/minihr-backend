-- +goose Up
-- +goose StatementBegin
ALTER TABLE company ADD UNIQUE (email);

-- +goose StatementEnd
-- +goose Down
-- +goose StatementBegin
-- +goose StatementEnd
