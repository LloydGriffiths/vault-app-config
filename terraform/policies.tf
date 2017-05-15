resource "vault_policy" "vault-app-config" {
  name   = "vault-app-config"
  policy = "${file("policies/vault-app-config.hcl")}"
}
