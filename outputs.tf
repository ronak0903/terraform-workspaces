output "s3_bucket_id" {
  description = "The name of the S3 bucket"
  value       = module.s3_bucket.bucket_id
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = module.s3_bucket.bucket_arn
}

output "active_workspace" {
  description = "The active Terraform workspace"
  value       = terraform.workspace
}
