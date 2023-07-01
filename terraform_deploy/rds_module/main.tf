resource "aws_db_instance" "terra" {
  identifier             = "${var.resource_prefix}-mydb"
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "8.0.32"
  instance_class         = var.mysql_instance_class
  db_name                = "my_mysql"
  username               = var.mysql_master_user_name
  password               = random_string.password.result
  skip_final_snapshot    = true
  apply_immediately      = true
  db_subnet_group_name   = aws_db_subnet_group.terra.id
}
 
resource "aws_db_subnet_group" "terra" {
  name        = "${var.resource_prefix}-rds-subnet-group"
  description = "RDS subnet group"
  subnet_ids  = [var.subnet_id1, var.subnet_id2]
}
 
resource "random_string" "password" {
  length  = 10
  special = false
}