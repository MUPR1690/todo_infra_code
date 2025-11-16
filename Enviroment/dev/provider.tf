terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.53.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "02fc6674-9e4d-4764-8702-0c4550e06df7"
}