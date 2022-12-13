terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "myresoucegrp"
    storage_account_name = "furkanstorageaccount"
    container_name       = "terraform-state-file"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "3a4a2a22-b370-425a-b18b-fcb708518ae6"
  client_id       = "ba8c756c-4a6d-49a4-9558-8fb57beb3d54"
  client_secret   = "Hc08Q~YcSFoYZGWTsluKrtP~c1qPTnpk5YJjibXY"
  tenant_id       = "45683986-e2d8-4cf2-9e5c-f9ecb991a2d8"
  features {}
}
