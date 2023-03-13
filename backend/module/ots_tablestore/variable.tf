variable "ots_instance_name" {
  description = "Name of the OTS instance"
  type        = string
  default     = "terraform-remote"
}
variable "ots_table_name" {
  description = "Name of ots table store"
  type        = string
  default     = "statelock"
}
