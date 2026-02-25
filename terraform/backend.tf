terraform {
 backend "s3" {
    bucket         = "terraform-state-bucket-gvil-022526"
    key            = "website/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true
  }
}
