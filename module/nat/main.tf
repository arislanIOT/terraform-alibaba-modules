# #If you want to add public IP, you can use resource 'alicloud_eip_association'
# # to bind several elastic IPs for one Nat Gateway.
# # resource "alicloud_nat_gateway" "main" {
# #   depends_on       = [alicloud_vpc.foo, alicloud_vswitch.foo1]
# #   vpc_id           = alicloud_vpc.foo.id
# #   nat_gateway_name = var.name
# #   nat_type         = "Enhanced"
# #   vswitch_id       = alicloud_vswitch.foo1.id
# # }
# ### Above one is proper way of nat

resource "alicloud_nat_gateway" "default" {
  # count = length(var.cidr_block)  
  # count  = var.new_nat_gateway == true ? 1 : 0
  count = length(var.vswitch_id)
  vpc_id = var.vpc_id
  name   = var.nat_gateway_name
  nat_type         = "Enhanced"
  
  vswitch_id       = var.vswitch_id[count.index]
}

resource "alicloud_eip" "default" {
  # count     = var.new_nat_gateway == true ? 1 : 0
  count = length(var.vswitch_id)
  bandwidth = 10
}

resource "alicloud_eip_association" "default" {
  # count         = var.new_nat_gateway == true ? 1 : 0
  count = length(var.vswitch_id)
  allocation_id = element(alicloud_eip.default.*.id, count.index)
  instance_id   = element(alicloud_nat_gateway.default.*.id, count.index)
}


#SNAT Entry

resource "alicloud_snat_entry" "default" {
  count = length(var.vswitch_id)
  depends_on        = [alicloud_eip_association.default]
  # count         = var.new_nat_gateway == true ? 1 : 0
  snat_table_id     = alicloud_nat_gateway.default[count.index].snat_table_ids
  snat_ip           = alicloud_eip.default[count.index].ip_address
  # snat_ip           = join(",", alicloud_eip.default.*.ip_address)
  source_vswitch_id = var.vswitch_id[count.index]
}

# resource "alicloud_nat_gateway" "nat_gateway" {
#   vpc_id = var.vpc_id
#   name = var.nat_gateway_name
#   nat_type         = "Enhanced"
#   count = length(var.vswitch_id)
#   vswitch_id = var.vswitch_id[count.index]
# }

# resource "alicloud_eip" "eip1" {
#   count = length(alicloud_nat_gateway.nat_gateway.id)
#   bandwidth = "10"
# }

# resource "alicloud_eip_association" "eip1_asso" {
#   count         = var.new_nat_gateway == true ? 1 : 0
#   allocation_id = alicloud_eip.eip1.id
#   instance_id = alicloud_nat_gateway.nat_gateway[count.index].id
# }

# resource "alicloud_snat_entry" "snatx" {
#   count         = var.new_nat_gateway == true ? 1 : 0
#   snat_table_id = alicloud_nat_gateway.nat_gateway[count.index].snat_table_ids
#   snat_ip = alicloud_eip.eip1.ip_address
#   depends_on        = [alicloud_eip_association.eip1_asso]
  
# }