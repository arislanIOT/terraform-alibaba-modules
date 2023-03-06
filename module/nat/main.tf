#If you want to add public IP, you can use resource 'alicloud_eip_association'
# to bind several elastic IPs for one Nat Gateway.
# resource "alicloud_nat_gateway" "main" {
#   depends_on       = [alicloud_vpc.foo, alicloud_vswitch.foo1]
#   vpc_id           = alicloud_vpc.foo.id
#   nat_gateway_name = var.name
#   nat_type         = "Enhanced"
#   vswitch_id       = alicloud_vswitch.foo1.id
# }
### Above one is proper way of nat

resource "alicloud_nat_gateway" "default" {
  # count = length(var.source_vswitch_id)
  count  = var.new_nat_gateway == true ? 1 : 0
  vpc_id = var.vpc_id
  name   = var.nat_gateway_name
  nat_type         = "Enhanced"
  vswitch_id       = var.vswitch_id[count.index]
}

resource "alicloud_eip" "default" {
  count     = var.new_nat_gateway == true ? 1 : 0
  bandwidth = 10
}

resource "alicloud_eip_association" "default" {
  count         = var.new_nat_gateway == true ? 1 : 0
  allocation_id = alicloud_eip.default[0].id
  instance_id   = alicloud_nat_gateway.default[0].id
}


#SNAT Entry

resource "alicloud_snat_entry" "default" {
  count         = var.new_nat_gateway == true ? 1 : 0
  snat_table_id     = alicloud_nat_gateway.default[0].snat_table_ids
  snat_ip           = alicloud_eip.default[0].ip_address
  source_vswitch_id = var.vswitch_id[count.index]
}