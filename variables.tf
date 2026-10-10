variable "cloudfront_vpc_origins" {
  description = <<EOT
Map of cloudfront_vpc_origins, attributes below
Optional:
    - tags
    - vpc_origin_endpoint_config (block):
        - arn (required)
        - http_port (required)
        - https_port (required)
        - name (required)
        - origin_protocol_policy (required)
        - origin_ssl_protocols (optional, block):
            - items (required)
            - quantity (required)
EOT

  type = map(object({
    tags = optional(map(string))
    vpc_origin_endpoint_config = optional(list(object({
      arn                    = string
      http_port              = number
      https_port             = number
      name                   = string
      origin_protocol_policy = string
      origin_ssl_protocols = optional(list(object({
        items    = set(string)
        quantity = number
      })))
    })))
  }))
}

