#Resource to manage a Managed k8s Cluster in Alibaba Cloud

#Recommended to create a Cluster with Zero worker node
#then use a node pool to manage the cluster

#alicloud_cs_kubernetes_node_pool to manage worker node pool.

### VPC Setup ###

resource "alicloud_vpc" "vpc" {
    vpc_name = var.vpc_name
    cidr_block = var.cidr_block
    resource_group_id = var.resource_group_id
    tags = merge(
    {
      "Name" = format("%s", var.vpc_name)
    },
    var.vpc_tags,
  )
  
}

