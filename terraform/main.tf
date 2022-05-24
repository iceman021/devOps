terraform {
required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
   required_version = ">= 1.1.0"
}
  # The "feature" block is required for AzureRM provider 2.x.
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rsg" {
  name     = "terraform-group"
  location = "west europe"
}


