variable "cluster_name" {
  description = "name of k8s cluster"
  type = string 
  default = ""
}
variable "cluster_spec" {
  description = "name of k8s cluster"
  type = string 
  default = "ack.pro.small"
}
variable "service_cidr" {
  description = "service cidr"
  type = string
  default = "172.21.0.0/20"
}
variable "cidr_for_pod" {
  description = "cidr block for pod vswitch"
  type = list(string)
  default = [] 
}
variable "vpc_id" {
  description = "vpc_id"
  type = string
  default = ""  
}
variable "vswitch_id" {
  description = "vswitch id from vswitch module"
  type = any
  default = []  
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
variable "cluster_addons" {
  type = list(object({
    name      = string
    config    = string
  }))

  default = [
    {
      "name"     = "terway-eniip",
      "config"   = "",
    }
  ]
}
