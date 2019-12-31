
locals {
  private_key_pem = var.enabled ? join("", tls_private_key.private_key.*.private_key_pem) : ""
}

resource "tls_private_key" "private_key" {
  count     = var.enabled ? 1 : 0
  algorithm = "RSA"
}

resource "acme_registration" "reg" {
  count            = var.enabled ? 1 : 0
  account_key_pem  = local.private_key_pem
  email_address    = var.certificate_email
}
