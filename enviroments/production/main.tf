module "prod" {
  source = "../../modules/aws"

  cluster_name = "totem-eks"
  vpc_name     = "VPC-ECS"
}