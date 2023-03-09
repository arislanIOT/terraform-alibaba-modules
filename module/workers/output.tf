output "availability_zone" {
  value = alicloud_cs_kubernetes_node_pool.mynodes.*.instance_types
}