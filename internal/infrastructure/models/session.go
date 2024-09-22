package models

type Session struct {
	ID        int    `db:"id"`
	SessionID string `db:"session_id"`
	UserID    string `db:user_id`
	CreatedAt string `db:"created_at"`
	UpdatedAt string `db:"updated_at"`
}
