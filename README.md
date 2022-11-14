# terraform-aws-cloudfront-webpage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |

## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_s3_bucket_id"></a> [s3_regional_id](#input\_s3_bucket_id) | ID of the bucket | `string` | n/a | yes |
| <a name="input_s3_bucket_regional_domain"></a> [s3_bucket_regional_domain](#input\_bucket_name) | Name of the bucket | `string` | n/a | yes |
| <a name="input_s3_bucket_arn"></a> [s3_bucket_arn](#input\_s3_bucket_arn) | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname | `string` | n/a | yes |
| <a name="input_aliases"></a> [aliases](#input\_aliases) | Subdomains of the cloudfront distribution | `list(string)` | n/a | yes |
| <a name="input_domain_name"></a> [domain_name](#input\_domain_name) | Name of the custom domain | `string` | n/a | yes |
| <a name="input_client"></a> [client](#input\_client) | Client Name for the S3 that it belongs to | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | S3 Bucket environment | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region for Resources | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudfront_domain"></a> [cloudfront\_domain](#output\_cloudfront\_domain) | The domain name corresponding to the distribution. Will be of format *random-string*.cloudfront.net |
| <a name="output_cloudfront_id"></a> [cloudfront\_id](#output\_cloudfront\_id) | The ID corresponding to the distribution. |
| <a name="output_cloudfront_arn"></a> [cloudfront\_arn](#output\_cloudfront\_arn) | The ARN (Amazon Resource Name) for the distribution. |

## Security Scan

### Checkov results

```
myuser@myhost:~$ checkov --compact --skip-path /tf/example

       _               _              
   ___| |__   ___  ___| | _______   __
  / __| '_ \ / _ \/ __| |/ / _ \ \ / /
 | (__| | | |  __/ (__|   < (_) \ V / 
  \___|_| |_|\___|\___|_|\_\___/ \_/  
                                      
By bridgecrew.io | version: 2.2.50 

terraform scan results:

Passed checks: 22, Failed checks: 3, Skipped checks: 0
...
```

### Tfsec results

```
myuser@myhost:~$ tfsec --exclude-path /src/example

...

  timings
  ──────────────────────────────────────────
  disk i/o             57.332µs
  parsing              1.336851ms
  adaptation           114.703µs
  checks               2.599403ms
  total                4.108289ms

  counts
  ──────────────────────────────────────────
  modules downloaded   0
  modules processed    1
  blocks processed     24
  files read           6

  results
  ──────────────────────────────────────────
  passed               4
  ignored              0
  critical             0
  high                 1
  medium               1
  low                  0

  4 passed, 2 potential problem(s) detected.
```

<!-- END_TF_DOCS -->