output "aks_dns" {
  value = "${azurerm_dns_zone.aks_dns.name}"
}

output "aks_dns_zone_private" {
  value = "${azurerm_private_dns_zone.aks_dns_zone_private.name}"
  #value = "${var.private_dns_enable == false ? '' : azurerm_private_dns_zone.aks_dns_zone_private.0.id}"
}

output "aks_dns_name_servers" {
  value = "${azurerm_dns_zone.aks_dns.name_servers}"
}