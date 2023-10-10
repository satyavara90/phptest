terraform {
  required_version = "~> 1.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.18"
    }
  }
}

provider "github" {
  sub_id = var.subscription_id
  ten_id=var.tenant_id
  cli_id=var.client_id

}
