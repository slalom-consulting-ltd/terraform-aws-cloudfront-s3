/*variable "fqdn" {
  type        = string
  description = "A fully qualified domain name"
}*/

variable "force_destroy" {
  type    = bool
  default = true
}


variable "common_tags" {
  type        = map
  description = "Implements the common tags scheme"
}

variable "ttl" {
  type    = string
  default = "300"
}

variable "bucket_acl" {
  type    = string
  default = "Private"
}

variable "versioning" {
  type        = bool
  default     = true
  description = "Switch to control versioning"
}

variable "access_log_bucket" {
  type        = string
  default     = "logging"
  description = "Name of your access logging bucket"
}

variable "acm_certificate_arn" {
  type        = string
  default     = ""
  description = "The ARN of the certificate to be used"
}



variable "locations" {
  description = "Locations for the Distribution"
  type        = list
  default     = ["GB"]
}

variable "web_acl_id" {
  description = "If a WAF is being used - the Id of the AWS WAF web ACL that is associated with the distribution"
  default     = ""
  type        = string
}

variable "cloudfront_default_certificate" {
  description = "use default SSL certificate"
  type        = bool
  default     = true
}

variable "price_class" {
  type    = string
  default = "PriceClass_100"
}


variable "bucket_name" {
  type        = string
  description = "name of the bucket"
}


variable "min_ttl" {
  description = "min ttl values"
  type        = number
  default     = 30
}

variable "default_ttl" {
  description = "default ttl values"
  type        = number
  default     = 90
}

variable "max_ttl" {
  description = "max ttl values"
  type        = number
  default     = 300
}
