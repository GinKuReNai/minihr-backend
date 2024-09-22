package repository

import (
	"github.com/GinKuReNai/minihr-backend/internal/domain"
	"github.com/GinKuReNai/minihr-backend/internal/infrastructure/models"
	"github.com/jmoiron/sqlx"
)

type companyRepositoryImpl struct {
	db *sqlx.DB
}

func NewCompanyRepository(db *sqlx.DB) domain.CompanyRepository {
	return &companyRepositoryImpl{db}
}

func (r *companyRepositoryImpl) Create(company *models.Company) error {
	sql :=
		`INSERT INTO company (
            company_id,
            email,
            hash_password,
            address,
            description
        ) VALUES (
            :company_id,
            :email,
            :hash_password,
            :address,
            :description
        )`

	_, err := r.db.NamedExec(sql, company)
	return err
}

func (r *companyRepositoryImpl) GetByEmail(email string) (*models.Company, error) {
	var company models.Company

	sql := "SELECT * FROM company WHERE email = ?"

	err := r.db.Get(&company, sql, email)
	if err != nil {
		return nil, err
	}

	return &company, nil
}
