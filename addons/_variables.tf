variable "cluster_name" {}

variable "owner" {}

data "aws_caller_identity" "current" {}

variable "cloudwatch_logging_enabled" {
  default = true
}

variable "cloudwatch_log_group" {
  default     = "datakube"
  description = "the name of your log group, will need to match fluentd config"
}

variable "cloudwatch_log_retention" {
  default     = 90
  description = "The number of days to keep logs"
}

variable "alb_ingress_enabled" {
  default = true
}

variable "cluster_autoscaler_enabled" {
  default = true
}

variable "datacube_wms_enabled" {
  default = true
}

variable "datacube_wps_enabled" {
  default = true
}

variable "external_dns_enabled" {
  default = true
}