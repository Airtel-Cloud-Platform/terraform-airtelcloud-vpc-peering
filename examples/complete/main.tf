module "vpc_peering" {
  source = "../../"

  name        = "production-vpc-peering"
  description = "Peering between production and shared services VPC"

  availability_zone = "S2"
  region            = "south"

  vpc_source_id = "source-vpc-id"
  vpc_target_id = "target-vpc-id"

  is_pcl_enabled = false

  allowed_subnet_list = [
    "subnet-id-1",
    "subnet-id-2"
  ]

  blocked_subnet_list = [
    "subnet-id-3"
  ]
}
