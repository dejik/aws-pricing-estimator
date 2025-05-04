module "pricing" {
  source  = "terraform-aws-modules/pricing/aws"
  version = "~> 1.0"

  region           = "us-east-1"
  ec2_instances    = var.ec2_instances
  lambda_functions = var.lambda_functions
}

output "ec2_monthly_costs" {
  value = module.pricing.ec2_instance_monthly_costs
}

output "lambda_monthly_costs" {
  value = module.pricing.lambda_function_monthly_costs
}
