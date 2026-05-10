# To Create Resource group.
resource "azurerm_resource_group" "rgs" {
  name     = "Flipkart"
  location = "Central India"

  tags = {
    environment = "production"
  }
}

# To Create Storage Account.
resource "azurerm_storage_account" "sta" {
  name                     = "flipkartstorage12345"
  resource_group_name      = azurerm_resource_group.rgs.name
  location                 = azurerm_resource_group.rgs.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "production"
  }
}


resource "azurerm_storage_container" "example" {
  name               = "vhds"
  storage_account_id = azurerm_storage_account.sta.id
}

