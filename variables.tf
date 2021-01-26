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
variable "subnet_ids" {
  type    = list(string)
  default = []

}
variable "backup_retention_period" {}

variable "multi_az" {
  type = bool
}
variable "storage_type" {}
variable "engine" {}
variable "engine_version" {}