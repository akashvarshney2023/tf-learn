resource "azurerm_resource_group" "example" {
  count = var.azure_resource_group_info[2] ? 1 : 0

  name     = var.azure_resource_group_info[0]
  location = var.azure_resource_group_info[1]
}
