output "peering_id" {
  description = "VPC Peering ID"
  value       = airtelcloud_vpc_peering.this.id
}

output "peering_state" {
  description = "VPC Peering State"
  value       = airtelcloud_vpc_peering.this.state
}

output "peering" {
  description = "Complete VPC Peering Object"

  value = {
    id                  = airtelcloud_vpc_peering.this.id
    state               = airtelcloud_vpc_peering.this.state
    source_vpc_id       = var.vpc_source_id
    target_vpc_id       = var.vpc_target_id
    is_pcl_enabled      = var.is_pcl_enabled
    allowed_subnet_list = var.allowed_subnet_list
    blocked_subnet_list = var.blocked_subnet_list
  }
}

output "source_vpc_id" {
  description = "Source VPC ID"
  value       = var.vpc_source_id
}

output "target_vpc_id" {
  description = "Target VPC ID"
  value       = var.vpc_target_id
}
