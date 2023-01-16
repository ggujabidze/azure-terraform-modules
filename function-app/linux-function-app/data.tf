data "azurerm_subnet" "subnet" {
  name                 = var.private_ep_subnet_name
  virtual_network_name = var.private_ep_vnet_name
  resource_group_name  = var.vnet_rg_name
}