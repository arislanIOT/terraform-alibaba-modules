# ots_tablestore

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
| [alicloud_ots_table.basic](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ots_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ots_instance_name"></a> [ots\_instance\_name](#input\_ots\_instance\_name) | Name of the OTS instance | `string` | `"terraform-remote"` | no |
| <a name="input_ots_table_name"></a> [ots\_table\_name](#input\_ots\_table\_name) | Name of ots table store | `string` | `"statelock"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_table_id"></a> [table\_id](#output\_table\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
