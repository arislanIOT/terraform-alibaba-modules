## VPC Setup ##
variable "create" {
    description = "Command to create vpc if vpc id not found"
    type = bool
    default = true
  
}

variable "vpc_id" {
  description = "The vpc id used to launch several vswitches. If set, the 'create' will be ignored."
  type        = string
  default     = ""
}

variable "vpc_name" {
  description = "Name of the vpc needs to be created"
  type = string
  default = "vpc-deleteme"
}

variable "cidr_block" {
    description = "cidr block that need to use at vpc"
    type = string
    default = "192.168.0.0/16"
}

variable "resource_group_id" {
    description = "resource group where vpc"
    type = string
    default = ""
  
}

variable "tags" {
  description = "tag for grouping all"
  type = map(string)
  default = {}
}