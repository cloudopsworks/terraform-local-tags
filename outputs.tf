output "locals" {
  description = "All local scoped varialbes set"
  value = {
    name_tag              = local.name_tag
    name_tag_lc           = lower(local.name_tag)
    object_name_tag       = local.object_name_tag    # Allways lowercase
    object_name_tag_20    = local.object_name_tag_20 # Allways lowercase
    object_name_tag_32    = local.object_name_tag_32 # Allways lowercase
    organization_name     = local.organization_name
    organization_name_lc  = lower(local.organization_name)
    environment_name      = local.environment_name
    environment_name_lc   = lower(local.environment_name)
    environment_name_20   = lower(local.environment_name_20)
    environment_name_32   = lower(local.environment_name_32)
    organization_name_20  = lower(local.organization_name_20)
    organization_name_32  = lower(local.organization_name_32)
    common_tags           = local.common_tags
    common_tags_string    = local.common_tags_string
    common_tags_string_lc = local.common_tags_string_lc
    common_tags_k8s       = local.common_tags_k8s
  }
}

output "env" {
  description = "Environment variables with default"
  value = {
    organization_name = local.organization_name_val
    org_unit_name     = local.org_unit_name_val
    environment_name  = local.environment_name_val
    environment_type  = local.environment_type_val
  }
}
