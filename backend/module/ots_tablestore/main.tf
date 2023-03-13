resource "alicloud_ots_table" "basic" {
  instance_name = var.ots_instance_name
  table_name    = var.ots_table_name
  primary_key {
    name = "LockID"
    type = "String"
  }
  # primary_key {
  #   name = "pk2"
  #   type = "String"
  # }
  # primary_key {
  #   name = "pk3"
  #   type = "Binary"
  # }

  defined_column {
    name = "col1"
    type = "Integer"
  }
  # defined_column {
  #   name = "col2"
  #   type = "String"
  # }
  # defined_column {
  #   name = "col3"
  #   type = "Binary"
  # }

  time_to_live                  = -1
  max_version                   = 1
  deviation_cell_version_in_sec = 1
  enable_sse                    = true
  sse_key_type                  = "SSE_KMS_SERVICE"
}
