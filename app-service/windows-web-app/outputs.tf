output "web_app_id" {
  value = azurerm_windows_web_app.my_windows_web_app.id
}

output "web_app_hostname" {
  value = azurerm_windows_web_app.my_windows_web_app.default_hostname
}

output "web_app_outbound_ip_list" {
  value = azurerm_windows_web_app.my_windows_web_app.possible_outbound_ip_address_list
}