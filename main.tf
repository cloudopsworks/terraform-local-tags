locals {
  env_defaults = {
    organization_name = ""
    org_unit_name     = ""
    environment_name  = ""
    environment_type  = ""
  }

  organization_name_val = lookup(var.env, "organization_name", local.env_defaults.organization_name)
  org_unit_name_val     = lookup(var.env, "org_unit_name", local.env_defaults.org_unit_name)
  environment_name_val  = lookup(var.env, "environment_name", local.env_defaults.environment_name)
  environment_type_val  = lookup(var.env, "environment_type", local.env_defaults.environment_type)


  name_tag        = join(" ", compact([local.organization_name_val, local.org_unit_name_val, local.environment_name_val, local.environment_type_val]))
  object_name_tag = join("", compact([local.organization_name_val, local.org_unit_name_val, local.environment_name_val, local.environment_type_val]))

  organization_name = join("-", compact([local.organization_name_val, local.org_unit_name_val]))
  environment_name  = join("-", compact([local.organization_name_val, local.org_unit_name_val, local.environment_name_val, local.environment_type_val]))

  organization_name_20 = substr(local.organization_name, 0, 19 <= length(local.organization_name) ? 19 : length(local.organization_name))
  organization_name_32 = substr(local.organization_name, 0, 31 <= length(local.organization_name) ? 31 : length(local.organization_name))
  environment_name_20  = substr(local.environment_name, 0, 19 <= length(local.environment_name) ? 19 : length(local.environment_name))
  environment_name_32  = substr(local.environment_name, 0, 31 <= length(local.environment_name) ? 31 : length(local.environment_name))

  common_tags = {
    organization-full-name = join(" ", compact([local.organization_name_val, local.org_unit_name_val, local.environment_name_val, local.environment_type_val]))
    organization           = local.organization_name_val != "" ? local.organization_name_val : "NIL"
    organization-unit      = local.org_unit_name_val != "" ? local.org_unit_name_val : "NIL"
    application-name       = local.environment_name_val != "" ? local.environment_name_val : "NIL"
    application-type       = local.environment_type_val != "" ? local.environment_type_val : "NIL"
  }

  common_tags_k8s = { for k, v in local.common_tags :
    k => replace(v, " ", "-") if v != "NIL"
  }

  common_tags_string    = join(",", [for k, v in local.common_tags_k8s : format("%s=%s", k, v)])
  common_tags_string_lc = lower(local.common_tags_string)
}
