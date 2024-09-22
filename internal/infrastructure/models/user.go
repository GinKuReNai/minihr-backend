package models

type User struct {
	UserID         string `db:"user_id"`
	Name           string `db:"name"`
	Email          string `db:"email"`
	HashPassword   string `db:"hash_password"`
	Phone          string `db:"phone"`
	Occupation     string `db:"occupation"`
	GraduateSchool int    `db:"graduate_school"`
	CreatedAt      string `db:"created_at"`
	UpdatedAt      string `db:"updated_at"`
}
