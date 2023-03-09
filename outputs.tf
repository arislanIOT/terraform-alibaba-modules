output "vswitch_id" {
  description = "module out"
  value       = module.vswitches.vswitch_id
  #   ##vswitch_id     = 2 -> [
  #       + "vsw-l4vci6xxyv95jabpns4c8",
  #       + "vsw-l4vnpsjlhf7ltt6nym5ha",
  #     ]
}



output "node_zones" {
  value = module.workers.availability_zone
}

##K8S OUTPUT

output "endpoint_url" {
  description = "internal API endpoint"
  value       = module.k8s.endpoint_url

}

output "worker_vswitch_ids" {
  value = module.k8s.worker_vswitch_ids
}

output "cluster_id" {
  value = module.k8s.cluster_id

}
output "os_type" {
  value = module.k8s.os_type

}

#OTS Instance
# output "ots_instance_name" {
#     description = "name of ots instance"
#     value = module.ots_instance.ots_instance_name 
# }


##NAT Outputs
# output "nat_vswitch_id" {
#     description = "my nat vswitc id's"
#     value = module.nat.nat_vswitch_id

# }

# output "snat_ip" {
#     description = "snat_IP"
#     value = module.nat.snat_ip

# }

# output "nat_gateway_id" {
#     description = "to get id's of nat"
#     value = module.nat.nat_gateway_id
# }

# output "snat_table_id" {
#     description = "to get id's of nat"
#     value = module.nat.snat_table_id
# }