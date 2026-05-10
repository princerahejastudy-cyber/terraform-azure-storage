terraform {
  backend "azurerm" {
    resource_group_name   = "Flipkart"
    storage_account_name  = "flipkartstorage12345"
    container_name        = "vhds"
    key                   = "terraform.tfstate" 
  }
}