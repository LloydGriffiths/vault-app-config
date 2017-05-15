#!/bin/bash -eu

config=$(vault read -format=json secret/vault-app-config)

export DB_URI=$(echo $config | jq -r .data.db_uri)
export DB_USER=$(echo $config | jq -r .data.db_user)
export DB_PASSWORD=$(echo $config | jq -r .data.db_password)

./start-script
