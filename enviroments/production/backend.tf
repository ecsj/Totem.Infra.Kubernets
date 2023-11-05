terraform {
    backend "s3" {
        bucket  = "terraform-state-fiap"
        key     = "Prod/terraform.tfstate"
        region  = "us-west-2"
    }
}