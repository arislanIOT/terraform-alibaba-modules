output "ots_instance_name" {
  description = "name of ots instance"
  value       = alicloud_ots_instance.foo.name

}
output "region" {
  value = alicloud_ots_instance.foo.accessed_by
}
