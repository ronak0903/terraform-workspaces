# Environment configuration map
# Each workspace (aws-dev, aws-stage) picks its config from this map

locals {
  environment = {
    aws-dev = {
      bucket_name = "ronakhcp-dev-app-bucket"
      environment = "dev"
    }
    aws-stage = {
      bucket_name = "ronakhcp-stage-app-bucket"
      environment = "stage"
    }
  }

  # Select config based on the current HCP Terraform workspace
  config = local.environment[terraform.workspace]
}

module "s3_bucket" {
  source = "./modules/s3"

  bucket_name = local.config.bucket_name
  environment = local.config.environment
}
