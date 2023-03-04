output "vswitch_id" {
  description = "The ID of the VPC"
  value       = alicloud_vswitch.vsw.id
}

output "vswitch_cidr_block" {
  description = "The VPC cidr block"
  value       = alicloud_vswitch.vsw.cidr_block
}

output "vswitch_tags" {
  description = "The tags of the VPC"
  value       = alicloud_vswitch.vsw.tags
}

output "vswitch_name" {
  description = "The name of the VPC"
  value       = alicloud_vswitch.vsw.vswitch_name
}

