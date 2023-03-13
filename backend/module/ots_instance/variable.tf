variable "ots_instance_name" {
  description = "Name of the OTS  instance"
  type        = string
  default     = "terraform-remote"
}
variable "ots_description" {
  description = "resource will help you to manager a Table Store Instance"
  type        = string
  default     = "for table"
}
variable "network_access" {
  description = "The network limitation of accessing instance"
  type        = string
  default     = "Any"
}
variable "instance_type" {
  description = "Tyep of instances"
  type        = string
  default     = "HighPerformance"
}
variable "ots_tags" {
  description = "tags for ots instance"
  type        = map(string)
  default     = {}
}
