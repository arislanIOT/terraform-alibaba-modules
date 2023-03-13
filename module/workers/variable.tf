variable "node_pool_name" {
    description = "node pools naming"
    type = string
    default = "nodys"  
}
variable "cluster_id" {
  description = "k8s cluster id"
  type = string
  default = ""
}
variable "worker_vswitch_ids" {
  description = "worker_vswitch_ids ID block"
  type = any
  default = []
}
variable "tags" {
  description = "tag for grouping all"
  type = map(string)
  default = {}
}