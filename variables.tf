#VPC

variable "region" {
  description = "Specify the region where the cluster creates"
  type        = string
  default     = "me-central-1"
}
variable "profile" {
  description = "Provide the profile"
  type        = string
  default     = "ali_cloud_v1"

}
variable "vpc_name" {
  description = "Name of the vpc needs to be created"
  type        = string
  default     = "vpc-deleteme"
}

variable "cidr_block" {
  description = "cidr block that need to use at vpc"
  type        = string
  default     = "192.168.0.0/16"
}

variable "resource_group_id" {
  description = "resource group where vpc"
  type        = string
  default     = ""

}

variable "vpc_tags" {
  description = "tag for grouping all"
  type        = map(string)
  default     = {}
}

variable "zones" {
  description = "Specify the region where the cluster creates"
<<<<<<< HEAD
  type = list(string)
  default = []
=======
  type        = list(string)
  default     = []
>>>>>>> main
}