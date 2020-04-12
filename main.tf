#                _           _         _____                  _               
#       /\      | |         (_)       |  __ \                | |              
#      /  \   __| |_ __ ___  _ _ __   | |__) |__ _ _ __   ___| |__   ___ _ __ 
#     / /\ \ / _` | '_ ` _ \| | '_ \  |  _  // _` | '_ \ / __| '_ \ / _ \ '__|
#    / ____ \ (_| | | | | | | | | | | | | \ \ (_| | | | | (__| | | |  __/ |   
#   /_/    \_\__,_|_| |_| |_|_|_| |_| |_|  \_\__,_|_| |_|\___|_| |_|\___|_|   
#                                                                            

# Get 'admin' token from S3

# https://www.terraform.io/docs/providers/aws/r/s3_bucket.html

data "aws_s3_bucket_object" "admin-token" {

  bucket = local.bucket_name
  key    = "/${var.rancher_cluster_name}/admin_token.txt"

}

# https://www.terraform.io/docs/providers/rancher2/index.html

provider "rancher2" {

  #version = ""

  alias = "admin"

  api_url   = "https://${var.subdomain}.${var.domain}"
  token_key = data.aws_s3_bucket_object.admin-token

  insecure = true # This can be romoved when Let's Encrypt is fully working

}

# https://www.terraform.io/docs/providers/rancher2/d/cluster.html

resource "rancher2_cluster" "walking-skeleton" {

  name        = var.eks_cluster_name
  description = "${var.eks_cluster_name} Kubernetes cluster"

  # https://www.terraform.io/docs/providers/rancher2/r/cluster.html#eks_config-1

  eks_config {

    access_key = var.access_key
    secret_key = var.secret_key
    region     = var.region

    kubernetes_version = var.eks_kubernetes_version

    #minimum_nodes                   = 1 #var.minimum_nodes
    desired_nodes = var.eks_desired_nodes
    #maximum_nodes                   = 1 #var.maximum_nodes

    #security_groups                 = var.existing_vpc ? [var.security_group_name] : [""]
    #service_role                    = var.service_role != "" ? var.service_role : aws_iam_role.eks[0].name
    #subnets                         = var.existing_vpc ? list(var.subnet_id1, var.subnet_id2, var.subnet_id3) : [""]
    #ami                             = var.ami_id == "" ? data.aws_ami.distro.id : var.ami_id
    #associate_worker_node_public_ip = var.associate_worker_node_public_ip
    #instance_type                   = var.instance_type

    #node_volume_size                = var.disk_size

    #session_token                   = var.session_token
    #virtual_network                 = var.vpc_id

    #instance_type                   = "t2.medium"

  }

}