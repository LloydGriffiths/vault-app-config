resource "vault_generic_secret" "vault-app-config" {
  allow_read = true
  path       = "secret/vault-app-config"
  data_json  = "${file("secrets/vault-app-config.json")}"
}
