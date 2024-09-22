package models

type Company struct {
	CompanyID    string `db:"company_id"`
	Email        string `db:"email"`
	HashPassword string `db:"hash_password"`
	Address      string `db:"address"`
	Description  string `db:"description"`
	CreatedAt    string `db:"created_at"`
	UpdatedAt    string `db:"updated_at"`
}
