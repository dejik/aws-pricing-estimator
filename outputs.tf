output "ec2_monthly_costs" {
  value = module.pricing.ec2_instance_monthly_costs
}

output "lambda_monthly_costs" {
  value = module.pricing.lambda_function_monthly_costs
}
