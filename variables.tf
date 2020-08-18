variable "env" {
  description = "Environment definition object"
  type = object({
    organization_name = string
    org_unit_name     = string
    environment_name  = string
    environment_type  = string
  })
  default = {
    organization_name = ""
    org_unit_name     = ""
    environment_name  = ""
    environment_type  = ""
  }
}