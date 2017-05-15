## vault-app-config

Simple POC to demonstrate configuring applications via Vault - includes application
shell wrappers and use of the Golang Vault API client.

### Getting started

You'll need Vault running in development mode:

    vault server -dev

Once the vault server is up:

    make

This should provision Vault with a simple policy and an example generic secret, the
apps will simply output the values contained within the secret.
