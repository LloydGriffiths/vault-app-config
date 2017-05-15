package main

import (
	"log"
	"os"
)

type Database struct {
	Password string
	URI      string
	Username string
}

func main() {
	db := &Database{
		Password: os.Getenv("DB_PASSWORD"),
		URI:      os.Getenv("DB_URI"),
		Username: os.Getenv("DB_USER"),
	}

	log.Printf("%+v", db)
}
