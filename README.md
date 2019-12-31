# letsencrypt-account

#### Maintained by [@goci-io/prp-terraform](https://github.com/orgs/goci-io/teams/prp-terraform)

This module creates a new ACME registration for [letsencrypt](https://letsencrypt.org) and the required private key.

## Usage

```hcl
module "acme" {
  source            = "git::https://github.com/goci-io/letsencrypt-account.git?ref=tags/<latest-version>"
  certificate_email = "certs<at>@goci.io" 
}
```

### Configuration

| Name | Description | Default |
|-----------------|----------------------------------------|---------|
| certificate_email | E-Mail address for the letsencrypt Account | - |
| acme_prod | Use the production directory (otherwise certs may be untrusted) | true |
| enabled | If set to false no resources will be created | true |
