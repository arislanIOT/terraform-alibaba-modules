data "alicloud_zones" "myzone" {
  # count = length(var.cidr_for_pod) 
  available_resource_creation = "VSwitch"
  
}

resource "alicloud_vswitch" "vswitch_for_pod" {
  count = length(var.cidr_for_pod)  
  vswitch_name = "PodvSwtch"
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_for_pod[count.index]
  zone_id    = data.alicloud_zones.myzone.zones[count.index].id
  
}


resource "alicloud_cs_managed_kubernetes" "k8s" {
  
  new_nat_gateway = true
  is_enterprise_security_group = true
  slb_internet_enabled = false
  name = var.cluster_name
  cluster_spec = var.cluster_spec
  version = "1.24.6-aliyun.1"
  service_cidr       = var.service_cidr
  
  worker_vswitch_ids = var.worker_vswitch_ids
  pod_vswitch_ids = alicloud_vswitch.vswitch_for_pod.*.id 

  dynamic "addons" {
      for_each = var.cluster_addons
      content {
        name   = lookup(addons.value, "name", var.cluster_addons)
        config = lookup(addons.value, "config", var.cluster_addons)
      }
  }



}

