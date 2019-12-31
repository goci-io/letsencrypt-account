terraform {
  required_version = ">= 0.12.1"

  required_providers {
    tls = "~> 2.1"
  }
}

locals {
  acme_directory = var.acme_prod ? "" : "acme-v02" : "acme-staging-v02"
}

provider "acme" {
  version    = "~> 1.5"
  server_url = "https://${local.acme_directory}.api.letsencrypt.org/directory"
}

