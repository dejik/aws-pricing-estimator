# AWS Cost Estimator Module

This module uses the `terraform-aws-modules/pricing/aws` module to estimate monthly AWS costs for:

- EC2 Instances
- Lambda Functions

## Usage

1. Clone this repo or add it as a module.
2. Edit `terraform.tfvars.json` to define your resource specs.
3. Run Terraform:

```bash
terraform init
terraform apply -var-file=terraform.tfvars.json
```

## Output

Example output:
```json
ec2_monthly_costs = {
  "frontend" = 23.50
}
lambda_monthly_costs = {
  "image-resize" = 1.75
}
```

## Supported Regions

Default region is `us-east-1`. You can override by editing `main.tf`.
