terraform {
  backend "s3" {
    bucket = var.bucket_name # "udacity-tf-tscotto-us-east" 
    key    = "terraform/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = local.tags
  }
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}