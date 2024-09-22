package domain

import "github.com/GinKuReNai/minihr-backend/internal/infrastructure/models"

type CompanyRepository interface {
	Create(company *models.Company) error
	GetByEmail(email string) (*models.Company, error)
}
