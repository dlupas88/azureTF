resource "azurerm_virtual_network" "myvnet" {
  name                = "my-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "West US"
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "frontendsubnet" {
  name                 = "frontendSubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
