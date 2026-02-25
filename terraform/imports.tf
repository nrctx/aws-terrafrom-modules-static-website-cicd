# 1. Import the IAM User
import {
  to = module.backend.aws_iam_user.terraform_user
  id = "terraform_user"
}

# 2. Import the State S3 Bucket
import {
  to = module.backend.aws_s3_bucket.terraform_state_bucket
  id = "terraform-state-bucket-gvil-022526"
}

# 3. Import the CloudFront OAC
# NOTE: Replace 'ID_FROM_CONSOLE' with the actual OAC ID (e.g., E27S8EXAMPLE) 
# found in the CloudFront Console under 'Origin access'
import {
  to = module.cloudfront.aws_cloudfront_origin_access_control.cloudfront_s3_oac
  id = "E3NXYGNFV0KI8W" 
}