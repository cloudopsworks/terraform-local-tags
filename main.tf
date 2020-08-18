locals {
  name_tag        = join(" ", compact([var.env.organization_name, var.env.org_unit_name, var.env.environment_name, var.env.environment_type]))
  object_name_tag = join("", compact([var.env.organization_name, var.env.org_unit_name, var.env.environment_name, var.env.environment_type]))

  organization_name = join("-", compact([var.env.organization_name, var.env.org_unit_name]))
  environment_name  = join("-", compact([var.env.organization_name, var.env.org_unit_name, var.env.environment_name, var.env.environment_type]))

  common_tags = {
    organization-full-name = join(" ", compact([var.env.organization_name, var.env.org_unit_name, var.env.environment_name, var.env.environment_type]))
    organization           = var.env.organization_name
    organization-unit      = var.env.org_unit_name
    application-name       = var.env.environment_name
    application-type       = var.env.environment_type
  }

  common_tags_string = join(",", [for k, v in local.common_tags : format("%s=%s", k, v)])
}
