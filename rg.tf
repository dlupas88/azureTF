resource "azurerm_resource_group" "rg" {
  name     = "1-4e2f3f83-playground-sandbox"
  location = "West US"
}

#terraform import "azurerm_resource_group.rg" "/subscriptions/0cfe2870-d256-4119-b0a3-16293ac11bdc/resourceGroups/1-4e2f3f83-playground-sandbox"

