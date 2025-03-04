output "website_bucket_arn" {
  description = "The ARN of the s3 bucket"
  value       = module.static-website.bucket_arn
}

output "website_bucket_name" {
  description = "The name of the s3 bucket"
  value       = module.static-website.bucket_name
}

output "website_bucket_domain" {
  description = "Domain name for the bucket"
  value       = module.static-website.bucket_domain
}

output "website_bucket_tags" {
  description = "Tags applied to the bucket"
  value       = module.static-website.bucket_tags
}

output "website_url" {
  description = "The endpoint URL for the static website on S3"
  value       = "http://${module.static-website.website_endpoint}"
}

