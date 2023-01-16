output "function_app_id" {
  value = azurerm_linux_function_app.my_linux_function_app.id
}

output "function_app_hostname" {
  value = azurerm_linux_function_app.my_linux_function_app.default_hostname
}

output "function_app_outbound_ip_list" {
  value = azurerm_linux_function_app.my_linux_function_app.outbound_ip_address_list
}