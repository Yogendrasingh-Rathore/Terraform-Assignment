provider "aws"{
  region = var.region
}

resource "aws_db_instance" "terraform-rds" {
  allocated_storage    =  var.allocated_storage
  identifier           =  var.identifier
  storage_type         =  var.storage_type
  engine               =  var.engine
  engine_version       =  var.engine_version
  instance_class       =  var.instance_class
  name                 =  var.name
  username             =  var.username
  password             =  var.password
  apply_immediately    =  var.apply_immediately
  backup_window        =  var.backup_window
  deletion_protection  =  var.deletion_protection
}
