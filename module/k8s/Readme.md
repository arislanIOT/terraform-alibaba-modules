Cluster name
Cluster Specification
Region
Billing Method
Kubernetes Version
Container Runtime
vpc
Network Plug-in flannel or terway 
    IPVLAN
    Support for network policy  *

vSwitch  --- > var.vswitch_id 
Pod vSwitch ---> same as above

Service CIDR --> 192.168.0.0/16

Valid values: 10.0.0.0/16-24, 172.16-31.0.0/16-24, and 192.168.0.0/16-24.
The specified CIDR block cannot overlap with that of the VPC 172.160.0.0/12 or those of the ACK clusters that are deployed in the VPC. The CIDR block cannot be modified after the cluster is created.


Configure SNAT -- Recommended 

Nodes and applications in the cluster do not have Internet access. To enable Internet access for nodes and application after the cluster is created, you must manually create and configure a NAT gateway for the VPC. 

Access to API server --  SLB 

Option to expose API server to internet 

## Node pool Conf

Node Pool Name -
Instance Type -  (min 8Gb ram supported by terway) 4 cpu

Quantity -  
Nodes will be evenly assigned to your selected vSwitches.

System Disk.: 
OS
Security Reinforcement
Logon Type key pair, password, later
key Pair 


Component Configuration
-----------------------
Ingress  Don not install / Nginx ingress / ALB ingress
    SLB network type internal / public 

Service Discovery .: install NodeLocal DNSCache
Runs a DNS caching agent on each node to improve DNS resolution performance and stability. After you install NodeLocal DNSCache, you must enable automatic DNSConfig injection. View Details


