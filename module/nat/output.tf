output "nat_vswitch_id" {
    description = "my nat vswitc id's"
    value = alicloud_nat_gateway.default[*].vswitch_id
  
}

output "snat_ip" {
    description = "snat_IP"
    value = alicloud_snat_entry.default[*].snat_ip
  
}

output "nat_gateway_id" {
    description = "to get id's of nat"
    value = alicloud_nat_gateway.default[*].id
}

output "snat_table_id" {
    description = "to get id's of nat"
    value = alicloud_snat_entry.default[*].snat_table_id
}