data "aws_kms_key" "db_kms_key" {
  key_id = var.db_kms_key
}