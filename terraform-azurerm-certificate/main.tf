resource "azurerm_app_service_certificate_order" "certificate" {
  resource_group_name = "${var.resource_group_name}"
  location            = "global"
  name                = "${var.name_certificate}"
  distinguished_name  = "${var.naked_domain_host_name}"
  product_type        = "${var.certificate_type}"
  validity_in_years   = "${var.validity_in_years}"
  #provisioner "local-exec" {
  #  command = "openssl pkcs12 -in key-vault-tst-sices-certificate-tst0ef3ce33-0d7e-4ad1-94dd-90c57020fb7d-20191205.pfx -nocerts -out ct.key"
  #}  
}