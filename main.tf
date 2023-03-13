#Author
# terraform {
#   required_providers {
#     alicloud = {
#       source = "aliyun/alicloud"
#       version = "1.200.0"
#     }
#   }
# }
terraform {
  backend "oss" {
    bucket = "opexil-bucket"
    prefix = "opexil-module"
    key    = "version-1.tfstate"
    region = "me-central-1"

    tablestore_endpoint = "https://terraform-remote.me-central-1.ots.aliyuncs.com"
    tablestore_table    = "statelock"
  }
}


provider "alicloud" {

  region  = var.region
  profile = var.profile

}

module "vpc" {
  source     = "./module/vpc"
  vpc_name   = local.name_vpc
  cidr_block = "172.160.0.0/12"
  tags = var.tags

}

module "vswitches" {

  source       = "./module/vswitches"
  vswitch_name = local.name_vswitch
  vpc_id       = module.vpc.vpc_id
  cidr_block   = ["172.160.1.0/24", "172.160.2.0/24"]
  zone_id      = ["me-central-1a", "me-central-1b"]

  tags = var.tags

}

# module "nat" {
#   source = "./module/nat"
#   vpc_id = module.vpc.vpc_id
#   vswitch_id = module.vswitches.vswitch_id
#   source_vswitch_id = module.vswitches.vswitch_id
#   depends_on       = [
#     module.vpc.vpc,
#     module.vswitches.vswitch_id,
#     ]
# }

module "k8s" {
  source             = "./module/k8s"
  vpc_id             = module.vpc.vpc_id
  cluster_name       = local.name_k8s
  cluster_spec       = "ack.pro.small"
  service_cidr       = "192.168.0.0/16"
  cidr_for_pod       = ["172.160.10.0/24", "172.160.12.0/24"]
  vswitch_id         = module.vswitches.vswitch_id
  worker_vswitch_ids = module.vswitches.vswitch_id
  tags = var.tags

}

module "workers" {
  source             = "./module/workers"
  cluster_id         = module.k8s.cluster_id
  worker_vswitch_ids = module.vswitches.vswitch_id
  tags = var.tags

}
