#Resource for vswitch


resource "alicloud_vswitch" "vsw" {
  count = length(var.cidr_block)  
  vswitch_name = var.vswitch_name
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block[count.index]
  zone_id    = var.zone_id[count.index]

  tags = merge(
    {
      Name = format(
        "%s%03d",
        var.vswitch_name,
        count.index + 1
      )
    },
    var.vswitch_tags,
  )

}