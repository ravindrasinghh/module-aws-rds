module "rds" {
  source            = "./module/"
  environment       = var.environment
  instance_name     = var.instance_name
  allocated_storage = var.allocated_storage
  instance_class    = var.instance_class
  multi_az          = var.multi_az
  subnet_ids        = var.subnet_ids
  storage_type      = var.storage_type
  engine            = var.engine
  engine_version    = var.engine_version
  backup_retention_period = var.backup_retention_period

} 