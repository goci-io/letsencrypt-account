terraform {
  required_version = ">= 0.12.1"

  required_providers {
    tls = "~> 2.1"
  }
}

locals {
  acme_directory = var.acme_prod ? "" : "-staging"
}

provider "acme" {
  version    = "~> 1.5"
  server_url = "https://acme${local.acme_directory}-v02.api.letsencrypt.org/directory"
}
