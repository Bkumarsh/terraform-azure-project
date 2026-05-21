resource "azurerm_resource_group" "rg" {
  for_each = var.rg_name
  location = each.value.location
  name     = each.value.name
}