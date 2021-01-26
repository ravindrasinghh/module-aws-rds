## Deployment
- `terraform init` - download plugins required to deploy resources
- `terraform plan` - get detailed view of resources that will be created, deleted or replaced
- `terraform apply` - deploy the template without confirmation (non-interactive mode)
- `terraform destroy` - terminate all the resources created using this template without confirmation (non-interactive mode)

# Create a managed database using AWS RDS
This terraform module will deploy the following services:
- RDS
  - Database
- Random Password 
- SSM Parameter
## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allocated\_storage | n/a | `string` | n/a | yes |
| backup\_retention\_period | n/a | `any` | n/a | yes |
| db\_kms\_key | n/a | `string` | `"alias/aws/rds"` | no |
| db\_password | n/a | `string` | `""` | no |
| engine | n/a | `any` | n/a | yes |
| engine\_version | n/a | `any` | n/a | yes |
| environment | n/a | `string` | n/a | yes |
| instance\_class | n/a | `string` | n/a | yes |
| instance\_name | n/a | `string` | n/a | yes |
| mssql\_admin\_username | n/a | `string` | `"admin"` | no |
| multi\_az | n/a | `bool` | n/a | yes |
| option\_group\_name | Name of the DB option group to associate. | `string` | `"s3storeenabled"` | no |
| publicly\_accessible | n/a | `bool` | `false` | no |
| random\_password | n/a | `bool` | `true` | no |
| skip\_final\_snapshot | n/a | `string` | `"false"` | no |
| ssm\_kms\_key | n/a | `string` | `"alias/aws/ssm"` | no |
| storage\_encrypted | n/a | `bool` | `true` | no |
| storage\_type | n/a | `any` | n/a | yes |
| subnet\_ids | n/a | `list(string)` | `[]` | no |
| vpc\_cidr\_blocks | n/a | `string` | `"10.20.0.0/16"` | no |
| vpc\_id | n/a | `string` | `"vpc-0ddd708ceb9a5d836"` | no |

## Outputs

| Name | Description |
|------|-------------|
| db\_endpoint | n/a |
| db\_id | n/a |
| db\_name | n/a |
| db\_password\_ssm | n/a |
| db\_username | n/a |