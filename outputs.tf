output "cloudfront_vpc_origins_id" {
  description = "Map of id values across all cloudfront_vpc_origins, keyed the same as var.cloudfront_vpc_origins"
  value       = { for k, v in aws_cloudfront_vpc_origin.cloudfront_vpc_origins : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudfront_vpc_origins_arn" {
  description = "Map of arn values across all cloudfront_vpc_origins, keyed the same as var.cloudfront_vpc_origins"
  value       = { for k, v in aws_cloudfront_vpc_origin.cloudfront_vpc_origins : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudfront_vpc_origins_etag" {
  description = "Map of etag values across all cloudfront_vpc_origins, keyed the same as var.cloudfront_vpc_origins"
  value       = { for k, v in aws_cloudfront_vpc_origin.cloudfront_vpc_origins : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "cloudfront_vpc_origins_tags" {
  description = "Map of tags values across all cloudfront_vpc_origins, keyed the same as var.cloudfront_vpc_origins"
  value       = { for k, v in aws_cloudfront_vpc_origin.cloudfront_vpc_origins : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloudfront_vpc_origins_tags_all" {
  description = "Map of tags_all values across all cloudfront_vpc_origins, keyed the same as var.cloudfront_vpc_origins"
  value       = { for k, v in aws_cloudfront_vpc_origin.cloudfront_vpc_origins : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "cloudfront_vpc_origins_vpc_origin_endpoint_config" {
  description = "Map of vpc_origin_endpoint_config values across all cloudfront_vpc_origins, keyed the same as var.cloudfront_vpc_origins"
  value       = { for k, v in aws_cloudfront_vpc_origin.cloudfront_vpc_origins : k => v.vpc_origin_endpoint_config if v.vpc_origin_endpoint_config != null && length(v.vpc_origin_endpoint_config) > 0 }
}

