output "function_app_id" {
  value = azurerm_windows_function_app.my_windows_function_app.id
}

output "function_app_hostname" {
  value = azurerm_windows_function_app.my_windows_function_app.default_hostname
}

output "function_app_outbound_ip_list" {
  value = azurerm_windows_function_app.my_windows_function_app.possible_outbound_ip_address_list
}