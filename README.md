# terraform-gcp-app-engine

Terraform module to create an App Engine with IAP

## Usage

```
locals {
  project_short_name  = "hw"
  project_long_name   = "Hello World"
  organization_id     = "xxxxxxx"
  billing_account_id  = "xxxx"
  email_address       = "contact@example.com"
}

module "gcp_project" {
  source             = "git::https://github.com/0xdbe-terraform/terraform-gcp-project.git?ref=v1.1.0"
  organization_id    = local.organization_id
  billing_account_id = local.billing_account_id
  project_short_name = local.project_short_name
  project_long_name  = local.project_long_name
}

module "gcp_iap" {
  source             = "git::https://github.com/0xdbe-terraform/terraform-gcp-iap.git?ref=v1.1.0"
  email_address      = local.email_address
  project_id         = module.gcp_project.project_id
  project_long_name  = local.project_long_name
}

module "gcp_app_engine" {
  source               = "git::https://github.com/0xdbe-terraform/terraform-gcp-app-engine.git?ref=v1.0.0"
  project_id           = module.gcp_project.project_id
  oauth2_client_id     = module.gcp_iap.iap_client_id
  oauth2_client_secret = module.gcp_iap.iap_client_secret
}
```