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

# https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-ami.html
variable "eks_ami_id" {
  default = "ami-0ad8600a59c501b34" # For Kubernetes 1.15 & London (eu-west2)
}

variable "eks_cluster_name" {
  default = "walking-skeleton-eks"
}

# https://docs.aws.amazon.com/eks/latest/userguide/kubernetes-versions.html
variable "eks_kubernetes_version" {
  default = "1.15" # At the time of writing, this is the latest.
}

variable "eks_minimum_nodes" {
  default = 1
}
variable "eks_desired_nodes" {
  default = 2
}
variable "eks_maximum_nodes" {
  default = 3
}

variable "eks_instance_type" {
  default = "t2.medium"
}