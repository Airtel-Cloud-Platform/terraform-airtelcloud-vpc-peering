module "vpc_peering" {
  source = "../../"

  name = "vpc-peering"

  availability_zone = "S2"
  region            = "south"

  vpc_source_id = "source-vpc-id"
  vpc_target_id = "target-vpc-id"
}
