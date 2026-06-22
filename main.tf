resource "airtelcloud_vpc_peering" "this" {
  name        = var.name
  description = var.description

  az     = var.availability_zone
  region = var.region

  vpc_source_id = var.vpc_source_id
  vpc_target_id = var.vpc_target_id

  is_pcl_enabled = var.is_pcl_enabled

  allowed_subnet_list = var.allowed_subnet_list
  blocked_subnet_list = var.blocked_subnet_list
}
