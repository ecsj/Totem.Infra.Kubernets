module "prod" {
    source = "../../modules/aws"

    cluster_name    = "producao"
    vpc_name        = "VPC-ECS"
}