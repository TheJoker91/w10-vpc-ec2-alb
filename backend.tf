# Creating S3 Bucket
terraform {
  backend "s3" {
    bucket         = "w10-lb-ibb-terrafom"
    key            = "week10/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "locktable"
  }
}