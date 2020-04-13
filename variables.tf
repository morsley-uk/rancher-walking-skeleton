#   __      __        _       _     _           
#   \ \    / /       (_)     | |   | |          
#    \ \  / /_ _ _ __ _  __ _| |__ | | ___  ___ 
#     \ \/ / _` | '__| |/ _` | '_ \| |/ _ \/ __|
#      \  / (_| | |  | | (_| | |_) | |  __/\__ \
#       \/ \__,_|_|  |_|\__,_|_.__/|_|\___||___/
#                                             

variable "access_key" {}
variable "secret_key" {}

variable "region" {
  default = "eu-west-2" # London
}

variable "rancher_cluster_name" {
  default = "rancher-k8s"
}

variable "domain" {
  default = "morsley.io"
}
variable "subdomain" {
  default = "rancher"
}

# EKS Cluster...

variable "eks_ami_id" {
  default = "ami-01a6e31ac994bbc09"
}

variable "eks_cluster_name" {
  default = "walking-skeleton-k8s"
}

variable "eks_kubernetes_version" {
  default = "1.17.0"
}

variable "eks_desired_nodes" {
  default = 1
}

variable "eks_instance_type" {
  default = "t2.medium"
}