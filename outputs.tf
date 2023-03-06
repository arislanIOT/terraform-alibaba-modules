output "vswitch_id" {
    description = "module out"
    value = module.vswitches.vswitch_id
#   ##vswitch_id     = 2 -> [
#       + "vsw-l4vci6xxyv95jabpns4c8",
#       + "vsw-l4vnpsjlhf7ltt6nym5ha",
#     ]
}

output "nat_vswitch_id" {
    description = "my nat vswitc id's"
    value = module.nat.nat_vswitch_id
  
}

output "snat_ip" {
    description = "snat_IP"
    value = module.nat.snat_ip
  
}

output "nat_gateway_id" {
    description = "to get id's of nat"
    value = module.nat.nat_gateway_id
}