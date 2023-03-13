# backend

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_oss"></a> [oss](#module\_oss) | ./module/oss | n/a |
| <a name="module_ots_instance"></a> [ots\_instance](#module\_ots\_instance) | ./module/ots_instance | n/a |
| <a name="module_ots_tablestore"></a> [ots\_tablestore](#module\_ots\_tablestore) | ./module/ots_tablestore | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_profile"></a> [profile](#input\_profile) | Provide the profile | `string` | `"ali_cloud_v1"` | no |
| <a name="input_region"></a> [region](#input\_region) | Specify the region where the cluster creates | `string` | `"me-central-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ots_instance_name"></a> [ots\_instance\_name](#output\_ots\_instance\_name) | name of ots instance |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
