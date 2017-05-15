all: clean terraform compile run

clean:
	git clean -dfx

compile:
	cd start-script/ && go build
	cd vault-client/ && go build

run:
	source scripts/vault-auth.sh && cd start-script/ && ./start.sh
	source scripts/vault-auth.sh && ./vault-client/vault-client

terraform:
	unset VAULT_TOKEN && cd terraform/ && terraform apply

.PHONY: all clean compile run terraform
