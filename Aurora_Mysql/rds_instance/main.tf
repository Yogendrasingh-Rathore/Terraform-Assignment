provider "aws"{
  region = var.region
}

resource "aws_rds_cluster_instance" "mysql_instances" {
  count                =  var.my_count
  identifier           =  var.identifier.count.index
  cluster_identifier   =  var.cluster_identifier
  instance_class       =  var.instance_class
  engine               =  var.engine
  engine_version       =  var.engine_version
}
