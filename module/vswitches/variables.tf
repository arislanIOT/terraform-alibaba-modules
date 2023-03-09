variable "vpc_id" {
  description = "The vpc id used to launch several vswitches. If set, the 'create' will be ignored."
  type        = string
  default     = ""
}

variable "cidr_block" {
    description = "cidr block that need to use at vpc"
    type        = list(string)
    default     = []
}

variable "vswitch_name" {
  description = "Name of the vpc needs to be created"
  type = string
  default = "vswitch"
}

variable "zone_id" {
    description = "zon_id block that need to use at vpc"
    type        = list(string)
    default     = []
}

variable "vswitch_tags" {
  description = "tag for grouping all"
  type = map(string)
  default = {}
}

