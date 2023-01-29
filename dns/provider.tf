provider "azurerm" {  
  subscription_id = "5b3a7b32-2989-4260-adbe-5f39f97cdbe0"
  features {}
  skip_provider_registration = true
}

terraform {  
  required_providers {
    azurerm = {           
      source                  = "hashicorp/azurerm"
      version                 = "=2.49.0"
    }          
  }
  backend "azurerm" {}
}