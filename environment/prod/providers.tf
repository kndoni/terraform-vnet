terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.95.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "RG_TERRAFORM_STATE"
    storage_account_name = "stollamatfstate"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}