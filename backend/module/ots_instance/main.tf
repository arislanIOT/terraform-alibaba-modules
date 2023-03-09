# Create an OTS instance
resource "alicloud_ots_instance" "foo" {
  name          = var.ots_instance_name
  description   = var.ots_description
  accessed_by   = var.network_access
  instance_type = var.instance_type
  tags = merge(
    {
      Created = "TF"
      For     = "Building table"
    },
    var.ots_tags,
  )
}
