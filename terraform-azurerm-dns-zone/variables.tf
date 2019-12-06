variable "dns_zone_name" {
  type = "string"
  description = "Name this public zone"
}

variable "dns_zone_private_name" {
  type = "string"
  default = "localhost.local"
  description = "Name this private zone"
}

variable "resource_group_name" {
  type        = "string"
  description = "Resource group name"
}

variable "private_dns_enable" {
  description = "Enable or disable creation private dns"
}