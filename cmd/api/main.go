package main

import (
	"fmt"
	"net/http"

	"github.com/GinKuReNai/minihr-backend/internal/infrastructure/database"
	"github.com/joho/godotenv"
	"github.com/labstack/echo/v4"
)

func main() {
	loadEnv()

	database.InitDB()

	e := echo.New()

	e.GET("/", func(c echo.Context) error {
		return c.String(http.StatusOK, "Hello, World!")
	})

	e.Logger.Fatal(e.Start(":8080"))
}

func loadEnv() {
	err := godotenv.Load(".env")
	if err != nil {
		fmt.Printf("You couldn't load environment variables: %v", err)
	}
}
