# Airtel Cloud VPC Peering Terraform Module

Terraform module for provisioning Airtel Cloud VPC Peering connections.

## Features

- Creates VPC Peering connections
- Supports subnet allow lists
- Supports subnet block lists
- Supports Private Connectivity Link (PCL)
- Exposes peering metadata

## Usage

### Basic Example

```hcl
module "vpc_peering" {
  source = "Airtel-Cloud-Platform/vpc-peering/airtelcloud"

  name = "vpc-peering"

  availability_zone = "S2"
  region            = "south"

  vpc_source_id = "source-vpc-id"
  vpc_target_id = "target-vpc-id"
}
```

### Complete Example

```hcl
module "vpc_peering" {
  source = "Airtel-Cloud-Platform/vpc-peering/airtelcloud"

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
}
```

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|----------|
| name | VPC Peering Name | string | Yes |
| availability_zone | Availability Zone | string | Yes |
| region | Region | string | Yes |
| vpc_source_id | Source VPC ID | string | Yes |
| vpc_target_id | Target VPC ID | string | Yes |
| description | Peering Description | string | No |
| is_pcl_enabled | Enable Private Connectivity Link | bool | No |
| allowed_subnet_list | Allowed Subnet IDs | list(string) | No |
| blocked_subnet_list | Blocked Subnet IDs | list(string) | No |

## Outputs

| Name | Description |
|------|-------------|
| peering_id | VPC Peering ID |
| peering_state | VPC Peering State |
| peering | Complete VPC Peering Object |

## Notes

This module uses VPC IDs rather than VPC names.

Use outputs from the VPC module:

```hcl
vpc_source_id = module.vpc_a.vpc_id
vpc_target_id = module.vpc_b.vpc_id
```

## Requirements

| Name | Version |
|------|---------|
| Terraform | >= 1.5 |
| airtelcloud Provider | >= 1.0.4 |
