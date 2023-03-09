resource "alicloud_oss_bucket" "bucket-acl" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name      = "TF remote state"
    Terraform = "true"
  }

}
