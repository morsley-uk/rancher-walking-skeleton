﻿#   __      __        _       _     _           
#   \ \    / /       (_)     | |   | |          
#    \ \  / /_ _ _ __ _  __ _| |__ | | ___  ___ 
#     \ \/ / _` | '__| |/ _` | '_ \| |/ _ \/ __|
#      \  / (_| | |  | | (_| | |_) | |  __/\__ \
#       \/ \__,_|_|  |_|\__,_|_.__/|_|\___||___/
#                                             

variable "region" {}

variable "name" {}

variable "access_key" {}
variable "secret_key" {}

variable "bucket_name" {}

variable "cluster_name" {
  default = "walking-skeleton"
}

variable "kubernetes_version" {
  default = "1.17.0" 
}

#variable "domain_name" {}