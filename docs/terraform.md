## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | Environment definition object. (Optional) Default: {}. Supported keys: organization\_name, org\_unit\_name, environment\_name, environment\_type — all optional strings defaulting to empty, and empty values are omitted from the generated names. | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_env"></a> [env](#output\_env) | Environment definition as effectively resolved by this module, with every unset key defaulted to an empty string. |
| <a name="output_locals"></a> [locals](#output\_locals) | All local scoped variables computed by this module: naming strings in several length/case variants plus the common tag map in map, JSON, key=value and Kubernetes-safe renderings. |
