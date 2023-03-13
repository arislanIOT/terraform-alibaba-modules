data "alicloud_zones" default {
 
  available_resource_creation = "VSwitch"
}
data "alicloud_instance_types" "default" {
  # count = length(var.worker_vswitch_ids)
  cpu_core_count       = 4
  memory_size          = 8
  kubernetes_node_role = "Worker"
}

resource "alicloud_cs_kubernetes_node_pool" "mynodes" {
    # count = length(var.worker_vswitch_ids)
    name = var.node_pool_name
    cluster_id = var.cluster_id
    vswitch_ids = var.worker_vswitch_ids
    instance_types = [data.alicloud_instance_types.default.instance_types.0.id]
    system_disk_category = "cloud_essd"
    system_disk_size     = 40
    system_disk_performance_level = "PL0"
    image_type            = "AliyunLinux"
    # key_name             = alicloud_key_pair.default.key_name
    desired_size = 2
    tags = merge(
    {
      "Name" = format("%s", var.node_pool_name)
    },
    var.tags,
  )  
}

