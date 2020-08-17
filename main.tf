locals {
  name_tag        = join(" ", compact([var.organization_name, var.org_unit_name, var.environment_name, var.environment_type]))
  object_name_tag = join("", compact([var.organization_name, var.org_unit_name, var.environment_name, var.environment_type]))

  organization_name = join("-", compact([var.organization_name, var.org_unit_name]))
  environment_name  = join("-", compact([var.organization_name, var.org_unit_name, var.environment_name, var.environment_type]))

  common_tags = {
    organization-full-name = join(" ", compact([var.organization_name, var.org_unit_name, var.environment_name, var.environment_type]))
    organization           = var.organization_name
    organization-unit      = var.org_unit_name
    application-name       = var.environment_name
    application-type       = var.environment_type
  }

  common_tags_string = join(",", [for k, v in local.common_tags : format("%s=%s", k, v)])
}
