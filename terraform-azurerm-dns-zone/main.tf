resource "azurerm_dns_zone" "aks_dns" {
  name                = "${var.dns_zone_name}"
  resource_group_name = "${var.resource_group_name}"
}

resource "azurerm_private_dns_zone" "aks_dns_zone_private" {
  #for_each            = "${var.private_dns_enable == false ? 0 : 1}"
  name                = "${var.dns_zone_private_name}"
  resource_group_name = "${var.resource_group_name}"
}