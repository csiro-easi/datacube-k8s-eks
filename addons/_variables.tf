variable "cluster_name" {}

variable "owner" {}

data "aws_caller_identity" "current" {}

variable "cloudwatch_logs_enabled" {
  default = false
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
  default = false
}

variable "cluster_autoscaler_enabled" {
  default = false
}

variable "datacube_wms_enabled" {
  default = false
}

variable "datacube_wps_enabled" {
  default = false
}

variable "external_dns_enabled" {
  default = false
}

# Helm Provider
# =============
variable "install_tiller" {
  default = true
  description = "If true, the terraform helm provider will attempt to install Tiller"
}

variable "tiller_service_account" {
  type = "string"
  description = "The service account that tiller will use"
  default = "tiller"
}