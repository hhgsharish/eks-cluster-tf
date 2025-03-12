provider "aws" {
  region = var.aws_region
}
data "aws_availability_zones" "available" {}

locals {
  cluster_name = "example-eks-${random_string.suffix.result}"
}
resource "random_string" "suffix" {
  length  = 8
  special = false
}