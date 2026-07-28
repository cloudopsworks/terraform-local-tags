##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

# env: # (Optional) Environment definition object. Default: {} — every key falls back to "" and is dropped from the generated names and tags.
#   organization_name: "acme"      # (Optional) Organization name. Default: "" — maps to the `organization` tag.
#   org_unit_name: "devops"        # (Optional) Organizational unit name. Default: "" — maps to the `organization-unit` tag.
#   environment_name: "prod"       # (Optional) Application/environment name. Default: "" — maps to the `application-name` tag.
#   environment_type: "production" # (Optional) Environment type. Default: "" — maps to the `application-type` tag.
variable "env" {
  description = "Environment definition object. (Optional) Default: {}. Supported keys: organization_name, org_unit_name, environment_name, environment_type — all optional strings defaulting to empty, and empty values are omitted from the generated names."
  type        = any
  default     = {}
}
