terraform {
    required_providers{
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~>2.45"
        }
    }
}
provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "testrg" {
    name = var.rg_name
    location = var.location
    
}

output "rg-name"{
   description = "value of resource group"
   value = azurerm_resource_group.testrg
 }
