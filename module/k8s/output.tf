output "worker_vswitch_ids" {
    description = "Worker vswitch id"
    value = alicloud_cs_managed_kubernetes.k8s.*.worker_vswitch_ids
}


output "cluster_id" {
    description = "output to print k8s cluster id"
    value = alicloud_cs_managed_kubernetes.k8s.id
  
}