output "worker_vswitch_ids" {
    description = "Worker vswitch id"
    value = alicloud_cs_managed_kubernetes.k8s.*.worker_vswitch_ids
}
output "cluster_id" {
    description = "output to print k8s cluster id"
    value = alicloud_cs_managed_kubernetes.k8s.id  
}
output "endpoint_url" {
    description = "internal API endpoint"
    value = alicloud_cs_managed_kubernetes.k8s.api_audiences
  
}
output "os_type" {
    value = alicloud_cs_managed_kubernetes.k8s.platform
  
}
