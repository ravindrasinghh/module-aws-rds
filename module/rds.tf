resource "random_password" "root_password" {
  length      = 16
  special     = false
  min_numeric = 5
}

resource "aws_db_instance" "db" {
  depends_on                = ["aws_db_subnet_group.default_rds_mssql"]
  identifier                = "${var.environment}-${var.instance_name}"
  allocated_storage         = var.allocated_storage
  license_model             = "license-included"
  storage_type              = var.storage_type
  engine                    = var.engine
  engine_version            = var.engine_version
  instance_class            = "${var.instance_class}"
  multi_az                  = "${var.multi_az}"
  username                  = "${var.mssql_admin_username}"
  password                  = aws_ssm_parameter.db_password.value
  storage_encrypted         = var.storage_encrypted
  kms_key_id                = var.storage_encrypted == true ? data.aws_kms_key.db_kms_key.arn : null
  vpc_security_group_ids    = ["${aws_security_group.rds_mssql_security_group.id}"]
  db_subnet_group_name      = "${aws_db_subnet_group.default_rds_mssql.id}"
  publicly_accessible       = var.publicly_accessible
  backup_retention_period   = var.backup_retention_period
  skip_final_snapshot       = "${var.skip_final_snapshot}"
  final_snapshot_identifier = "${var.environment}-${var.instance_name}-mssql-snapshot"
  # option_group_name         = "${var.option_group_name}"
}