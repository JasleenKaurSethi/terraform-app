# configure the AWS provider
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = var.environment
      Terraform   = "true"
    }
  }
}

# module for creating a website using an s3 bucket
module "static-website" {
  source  = "app.terraform.io/Firsts/static-website/s3"
  version = "1.0.0"
  config = {
    bucket_name    = var.aws_bucket_name
    destroy_bucket = true
    index_suffix   = "index.html"
    error_key      = "error.html"
    bucket_tags = {
      Owner = "development team"
    }
  }
}
