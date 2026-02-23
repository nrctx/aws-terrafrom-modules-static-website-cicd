terraform {
    backend "s3" {
        bucket         = "terraform-state-bucket-gvil"
        key            = "website/terraform.tfstate"
        region         = "us-east-2"
        dynamodb_table = "terraform_state_locks"
    }
}