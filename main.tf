# terraform {
#   required_providers {
#     alicloud = {
#       source = "aliyun/alicloud"
#       version = "1.200.0"
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
    vpc_tags = {
      
      Owner       = "user"
      Environment = "dev"
      Name        = "complete"
    }
    
}

module "vswitches" {

  source = "./module/vswitches"
  vswitch_name = "myvswitch"
  vpc_id = module.vpc.vpc_id
  cidr_block = ["172.160.1.0/24", "172.160.2.0/24"]
  zone_id = ["me-central-1a", "me-central-1b"]

  vswitch_tags = {

    "Owner" = "user",
    "Environment" = "dev"
  }

}

module "nat" {
  source = "./module/nat"
  vpc_id = module.vpc.vpc_id
  vswitch_id = module.vswitches.vswitch_id
  source_vswitch_id = module.vswitches.vswitch_id
  depends_on       = [
    module.vpc.vpc,
    module.vswitches.vswitch_id,
    ]
}