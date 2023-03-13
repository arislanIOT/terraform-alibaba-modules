variable "vpc_id" {
  description = "The vpc id used to launch several vswitches. If set, the 'create' will be ignored."
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "The vpc id used to launch several vswitches. If set, the 'create' will be ignored."
  type        = any
  default     = []
}

variable "new_nat_gateway" {
  description = "nat boolean"
  type = bool
  default = true
  
}

variable "nat_gateway_name" {
  description = "name of the gateway"
  type = string
  default = "mynat"
  
}
variable "source_vswitch_id" {
  description = "The vpc id used to launch several vswitches. If set, the 'create' will be ignored."
  type        = any
  default     = []
}

variable "cidr_block" {
    description = "cidr block that need to use at vpc"
    type        = list(string)
    default     = []
}
<<<<<<< HEAD
=======
variable "nat_tags" {
  description = "tag for grouping all"
  type = map(string)
  default = {}
}
>>>>>>> main

