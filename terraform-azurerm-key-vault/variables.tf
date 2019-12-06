variable "region_code" {
  type        = "string"
  description = "Country region code"
}

variable "tenant_id" {
  type        = "string"
  description = "Tenant ID."
}

variable "key_vault_name" {
  type        = "string"
  description = "The name of the Key Vault."
}

variable "resource_group_name" {
  type        = "string"
  description = "The name of an existing resource group for the Key Vault."
}

variable "key_vault_type" {
  type        = "string"
  description = "The name of the SKU used for the Key Vault. The options are: `standard`, `premium`."
  default     = "standard"
}

variable "enabled_for_deployment" {
  type        = bool
  description = "Allow Virtual Machines to retrieve certificates stored as secrets from the key vault."
  default     = false
}

variable "enabled_for_disk_encryption" {
  type        = bool
  description = "Allow Disk Encryption to retrieve secrets from the vault and unwrap keys."
  default     = false
}

variable "enabled_for_template_deployment" {
  type        = bool
  description = "Allow Resource Manager to retrieve secrets from the key vault."
  default     = false
}

variable "user_object_id" {
  type        = "list"
  description = "Id this User, Service Princial or Group."
}

variable "key_permissions" {
  type        = "list"
  description = "A list of permissions for the Key Vault."
}

variable "certificate_permissions" {
  type        = "list"
  description = "A list of permissions to assign to the resources."
}

variable "secret_permissions" {
  type        = "list"
  description = "A list of permissions to assign to the resources."
}

variable "access_policy" {
  type        = bool
  description = "Create policy for user, service principal or group"
}