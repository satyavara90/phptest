terraform {

  backend "azurerm" {
    use_oidc = true
    resource_group_name  = "svownterraform"
    storage_account_name = "terraformsatya1234"
    container_name       = "tfstate"
    key                  = "php.tfstate"
   
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.2, < 4.0.0"
    }

}
}
provider "azurerm" {
  features {}
}

