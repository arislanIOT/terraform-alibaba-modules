## BLock of code for the backend ##

provider "alicloud" {

  region  = var.region
  profile = var.profile

}


module "ots_instance" {
  source            = "./module/ots_instance"
  ots_instance_name = "terraform-remote"
  network_access    = "Any"
  instance_type     = "HighPerformance"
}
module "ots_tablestore" {
  source            = "./module/ots_tablestore"
  ots_instance_name = module.ots_instance.ots_instance_name
  ots_table_name    = "statelock"
}
module "oss" {
  source      = "./module/oss"
  bucket_name = "opexil-bucket"

}
