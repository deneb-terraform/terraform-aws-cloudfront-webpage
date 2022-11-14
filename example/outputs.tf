output "cloudfront_domain" {
  description = "Domain name of the cloudfront distribution"
  value       = module.cloudfront.cloudfront_domain
}

output "cloudfront_id" {
  description = "ID of the cloudfront distribution"
  value = module.cloudfront.cloudfront_id
}

output "cloudfront_arn" {
  description = "The ARN (Amazon Resource Name) for the distribution"
  value = module.cloudfront.cloudfront_arn
}