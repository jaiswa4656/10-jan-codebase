terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.86.0"
    }
  }

  # backend "azurerm" {
  #       resource_group_name  = "rg1"
  #       storage_account_name = "statestg09>"
  #       container_name       = "tfstate"
  #       key                  = "terraform.tfstate"
  #   }
}
provider "azurerm" {
  features {}
}