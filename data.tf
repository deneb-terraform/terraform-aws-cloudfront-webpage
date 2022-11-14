data "aws_iam_policy_document" "policy" {
  statement {
    actions = ["s3:GetObject"]

    resources = [
      var.s3_bucket_arn,
      "${var.s3_bucket_arn}/*"
    ]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.oai.iam_arn]
    }
  }
}

data "aws_route53_zone" "domain" {
  name = var.domain_name
}