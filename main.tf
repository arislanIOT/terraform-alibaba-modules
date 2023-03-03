# terraform {
#   required_providers {
#     alicloud = {
#       source = "aliyun/alicloud"
#       version = "1.199.0"
#     }
#   }
# }

provider "alicloud" {
  region = "${var.region}"
  profile = "${var.profile}"
}

module "vpc" {
    source = "./module/vpc"
    vpc_name = "myvpc"
    cidr_block = "172.160.0.0/12"
    # resource_group_id = "myvpc-group"
    
    
  
}
