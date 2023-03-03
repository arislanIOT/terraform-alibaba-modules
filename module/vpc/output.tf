# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = alicloud_vpc.vpc.id
}

output "vpc_cidr_block" {
  description = "The VPC cidr block"
  value       = alicloud_vpc.vpc.cidr_block
}

output "vpc_tags" {
  description = "The tags of the VPC"
  value       = alicloud_vpc.vpc.tags
}

output "vpc_name" {
  description = "The name of the VPC"
  value       = alicloud_vpc.vpc.vpc_name
}

output "this_resource_group_id" {
  description = "The Id of resource group which the instance belongs."
  value       = alicloud_vpc.vpc.resource_group_id
}


