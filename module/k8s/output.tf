output "worker_vswitch_ids" {
    description = "Worker vswitch id"
    value = alicloud_cs_managed_kubernetes.k8s.*.worker_vswitch_ids
}
