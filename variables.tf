variable "ec2_instances" {
  description = "Map of EC2 instances with pricing attributes"
  type = map(object({
    instance_type           = string
    operating_system        = string
    tenancy                 = optional(string, "default")
    usage_class             = optional(string, "on_demand")
    pre_installed_software  = optional(string, "NA")
  }))
  default = {}
}

variable "lambda_functions" {
  description = "Map of Lambda function usage estimates"
  type = map(object({
    memory_size_mb           = number
    request_count            = number
    monthly_compute_seconds  = number
  }))
  default = {}
}
