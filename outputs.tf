output "cloudfront_domain" {
  description = "Domain name of the cloudfront distribution"
  value       = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "cloudfront_id" {
  description = "ID of the cloudfront distribution"
  value       = aws_cloudfront_distribution.s3_distribution.id
}

output "cloudfront_arn" {
  description = "The ARN (Amazon Resource Name) for the distribution"
  value       = aws_cloudfront_distribution.s3_distribution.arn
}