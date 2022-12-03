# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet" {
  name                = "example-network"
  resource_group_name = "learn-8b0b8118-65b4-4d6d-8ef0-d6443cc0fccc"
  location            = "West US"
  address_space       = ["10.0.0.0/16"]
}