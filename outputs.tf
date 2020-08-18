output "locals" {
  description = "All local scoped varialbes set"
  value = {
    name_tag             = local.name_tag
    name_tag_lc          = lower(local.name_tag)
    object_name_tag      = local.object_name_tag
    object_name_tagi_lc  = lower(local.object_name_tag)
    organization_name    = local.organization_name
    organization_name_lc = lower(local.organization_name)
    environment_name     = local.environment_name
    environment_name_lc  = lower(local.environment_name)
    environment_name_20  = lower(local.environment_name_20)
    environment_name_32  = lower(local.environment_name_32)
    organization_name_20 = lower(local.organization_name_20)
    organization_name_32 = lower(local.organization_name_32)
    common_tags          = local.common_tags
    common_tags_string   = local.common_tags_string
  }
}
