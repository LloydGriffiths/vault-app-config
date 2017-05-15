#!/bin/bash -eu

export VAULT_ADDR=http://localhost:8200
export VAULT_TOKEN=$(vault token-create -policy=vault-app-config -format=json | jq -r .auth.client_token)
