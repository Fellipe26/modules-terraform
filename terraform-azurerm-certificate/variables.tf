variable "resource_group_name" {
  type        = "string"
  description = "Add Resource Group Name"
}

#variable "region_code" {
#  type        = "string"
#  description = "Azure Region Location default eastus."
#}

variable "certificate_type" {
  type        = "string"
  description = "Certificate type"
}

variable "naked_domain_host_name" {
  type        = "string"
  description = " Certificate name custom host name"
}

variable "name_certificate" {
  type        = "string"
  description = "Certificate name"
}

variable "validity_in_years" {
  type    = "string"
  default = "3"
}