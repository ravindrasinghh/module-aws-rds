variable "environment" {
  type = string
}
variable "instance_name" {
  type = string
}
variable "allocated_storage" {
  type = string
}
variable "instance_class" {
  type = string
}
variable "multi_az" {
  type = bool
}
variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "mssql_admin_username" {
  default = "admin"
}

variable "skip_final_snapshot" {
  default = "false"
}
variable "storage_type" {}
variable "engine" {}
variable "engine_version" {}
variable "db_kms_key" {
  default = "alias/aws/rds"
}
variable "random_password" {
  default = true
}
variable "db_password" {
  default = ""
}
variable "ssm_kms_key" {
  default = "alias/aws/ssm"
}
variable "storage_encrypted" {
  default = true
}
variable "publicly_accessible" {
  default = false
}
variable "backup_retention_period" {}
variable "option_group_name" {
  description = "Name of the DB option group to associate."
  type        = string
  default     = "s3storeenabled"
}

variable "vpc_id" {
  type    = "string"
  default = "vpc-0ddd708ceb9a5d836"
}

variable "vpc_cidr_blocks" {
  type    = "string"
  default = "10.20.0.0/16"
}
