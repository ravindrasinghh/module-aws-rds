resource "aws_ssm_parameter" "db_password" {
  name   = "/rds/${var.instance_name}/password"
  value  = var.random_password == true ? random_password.root_password.result : var.db_password
  type   = "SecureString"
  key_id = var.ssm_kms_key
}
