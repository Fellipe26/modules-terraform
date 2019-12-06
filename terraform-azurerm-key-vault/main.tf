resource "azurerm_key_vault" "key_vault" {
    location                        = "${var.region_code}"
    resource_group_name             = "${var.resource_group_name}"
    tenant_id                       = "${var.tenant_id}"
    name                            = "${var.key_vault_name}"

    enabled_for_deployment          = "${var.enabled_for_deployment}"
    enabled_for_disk_encryption     = "${var.enabled_for_disk_encryption}"
    enabled_for_template_deployment = "${var.enabled_for_template_deployment}"

    sku_name = "${var.key_vault_type}"
}

resource "azurerm_key_vault_access_policy" "azure-app-service" {
    count                    = "${length(var.user_object_id)}"

    key_vault_id             = "${azurerm_key_vault.key_vault.id}"
    tenant_id                = "${var.tenant_id}"

    object_id                = "${var.user_object_id[count.index]}"
    key_permissions          = "${var.key_permissions}"
    certificate_permissions  = "${var.certificate_permissions}"
    secret_permissions       = "${var.secret_permissions}"
}