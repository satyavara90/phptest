locals {
  resource_group_name=resource.azurerm_resource_group.sqlrg.name

  location=resource.azurerm_resource_group.sqlrg.location
  
}

resource "azurerm_resource_group" "sqlrg" {
  name = "sqlrg"
  location = "North Europe"  
}
