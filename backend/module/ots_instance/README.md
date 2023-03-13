# ots_instance

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_ots_instance.foo](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ots_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Tyep of instances | `string` | `"HighPerformance"` | no |
| <a name="input_network_access"></a> [network\_access](#input\_network\_access) | The network limitation of accessing instance | `string` | `"Any"` | no |
| <a name="input_ots_description"></a> [ots\_description](#input\_ots\_description) | resource will help you to manager a Table Store Instance | `string` | `"for table"` | no |
| <a name="input_ots_instance_name"></a> [ots\_instance\_name](#input\_ots\_instance\_name) | Name of the OTS  instance | `string` | `"terraform-remote"` | no |
| <a name="input_ots_tags"></a> [ots\_tags](#input\_ots\_tags) | tags for ots instance | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ots_instance_name"></a> [ots\_instance\_name](#output\_ots\_instance\_name) | name of ots instance |
| <a name="output_region"></a> [region](#output\_region) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
