terraform {
  backend "azurerm" {
  }
}

provider "azurerm" {
  version = "=3.6.0"
  # The "feature" block is required for AzureRM provider 2.x.
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "terraExample"
  location = "west europe"
}

output "id" {
  value = data.azurerm_resource_group.terraExample.id
}
