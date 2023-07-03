resource "azurerm_key_vault" "kvault" {
  name                        = "kvaultwlf1502"
  location                    = "East US"
  resource_group_name         = "1-af97d44f-playground-sandbox"
  enabled_for_disk_encryption = true
  tenant_id                   = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
    object_id = "3e7b2a22-b1f7-4a0a-aead-0ebecba3bd6d"

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}