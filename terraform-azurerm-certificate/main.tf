resource "azurerm_app_service_certificate_order" "certificate" {
  resource_group_name = "${var.resource_group_name}"
  location            = "global"
  name                = "${var.name_certificate}"
  distinguished_name  = "${var.naked_domain_host_name}"
  product_type        = "${var.certificate_type}"
  validity_in_years   = "${var.validity_in_years}"
}
