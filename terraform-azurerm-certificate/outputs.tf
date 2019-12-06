output "certificate_id" {
  value = "${azurerm_app_service_certificate_order.certificate.id}"
}

output "csr" {
  value = "${azurerm_app_service_certificate_order.certificate.csr}"
}

output "certificates" {
  value = "${azurerm_app_service_certificate_order.certificate.certificates}"
}