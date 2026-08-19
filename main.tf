terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3" {

  source = "./modules/s3"

  bucket_name = var.bucket_name
  region      = var.region

  versioning = var.versioning
  encryption = var.encryption

  lifecycle_days = var.lifecycle_days

  tags = {
    Client      = var.client
    Environment = var.environment
    Purpose     = var.purpose
    ManagedBy   = "Port"
  }
}
