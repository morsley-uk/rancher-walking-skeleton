#   _                     _
#  | |                   | |
#  | |     ___   ___ __ _| |___
#  | |    / _ \ / __/ _` | / __|
#  | |___| (_) | (_| (_| | \__ \
#  |______\___/ \___\__,_|_|___/

locals {

  bucket_name = replace(var.domain, ".", "-")

  admin_url = "https://${var.subdomain}.${var.domain}"
  
  folder = replace("${var.domain}-${var.subdomain}-files", ".", "-")

}