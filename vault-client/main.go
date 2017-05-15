package main

import (
	"log"

	"github.com/hashicorp/vault/api"
)

type Database struct {
	Password string
	URI      string
	Username string
}

func main() {
	v, err := api.NewClient(api.DefaultConfig())
	if err != nil {
		log.Fatal(err)
	}

	s, err := v.Logical().Read("secret/vault-app-config")
	if err != nil {
		log.Fatal(err)
	}

	db := &Database{
		Password: s.Data["db_password"].(string),
		URI:      s.Data["db_uri"].(string),
		Username: s.Data["db_user"].(string),
	}

	log.Printf("%+v", db)
}
