##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

output "locals" {
  description = "All local scoped variables computed by this module: naming strings in several length/case variants plus the common tag map in map, JSON, key=value and Kubernetes-safe renderings."
  value = {
    name_tag              = local.name_tag           # Space separated full name, original case
    name_tag_lc           = lower(local.name_tag)    # Space separated full name, lowercase
    object_name_tag       = local.object_name_tag    # Concatenated name with no separators, always lowercase
    object_name_tag_20    = local.object_name_tag_20 # object_name_tag truncated to 20 chars, always lowercase
    object_name_tag_32    = local.object_name_tag_32 # object_name_tag truncated to 32 chars, always lowercase
    organization_name     = local.organization_name  # Dash separated organization and unit
    organization_name_lc  = lower(local.organization_name)
    environment_name      = local.environment_name # Dash separated organization, unit, environment name and type
    environment_name_lc   = lower(local.environment_name)
    environment_name_20   = lower(local.environment_name_20)  # environment_name truncated to 20 chars
    environment_name_32   = lower(local.environment_name_32)  # environment_name truncated to 32 chars
    organization_name_20  = lower(local.organization_name_20) # organization_name truncated to 20 chars
    organization_name_32  = lower(local.organization_name_32) # organization_name truncated to 32 chars
    common_tags           = local.common_tags                 # Tag map, unset values rendered as "NIL"
    common_tags_json      = local.common_tags_json            # common_tags_k8s rendered as a JSON object string
    common_tags_string    = local.common_tags_string          # common_tags_k8s rendered as comma separated key=value pairs
    common_tags_string_lc = local.common_tags_string_lc       # common_tags_string, lowercase
    common_tags_k8s       = local.common_tags_k8s             # Tag map with spaces replaced by dashes and "NIL" entries dropped
  }
}

output "env" {
  description = "Environment definition as effectively resolved by this module, with every unset key defaulted to an empty string."
  value = {
    organization_name = local.organization_name_val
    org_unit_name     = local.org_unit_name_val
    environment_name  = local.environment_name_val
    environment_type  = local.environment_type_val
  }
}
