# letsencrypt-account

#### Maintained by [@goci-io/prp-terraform](https://github.com/orgs/goci-io/teams/prp-terraform)

![terraform](https://github.com/goci-io/letsencrypt-account/workflows/terraform/badge.svg?branch=master)

This module creates a new ACME registration for [letsencrypt](https://letsencrypt.org) and the required private key.

It is useful when using multiple modules (eg. [aws-acm-letsencrypt](https://github.com/goci-io/aws-acm-letsencrypt)) to request new certificates without creating multiple letsencrypt accounts. This is the recommended use of letsencrypt.

## Usage

```hcl
module "acme" {
  source            = "git::https://github.com/goci-io/letsencrypt-account.git?ref=tags/<latest-version>"
  certificate_email = "your-certs@domain.io"
}
```

### Configuration

| Name | Description | Default |
|-----------------|----------------------------------------|---------|
| certificate_email | E-Mail address for the letsencrypt Account | - |
| acme_prod | Use the production directory (otherwise certs may be untrusted) | true |
| enabled | If set to false no resources will be created | true |

### Outputs

| Name | Description |
|-----------------|----------------------------------------|
| account_key_pem | Letsencrypt private key in pem format to request new certificates |
