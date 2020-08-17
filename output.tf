output "locals" {
  value = {
    name_tag = local.name_tag
    object_name_tag=local.object_name_tag
    organization_name=local.organization_name
    environment_name=local.environment_name
    common_tags=local.common_tags
    common_tags_string=common_tags_string
  }
}