## RDS(Mysql)
output "mysql_endpoint" {
  description = "The connection endpoint"
  value       = element(split(":", aws_db_instance.terra.endpoint),0)
}

output "mysql_user_name" {
  description = "The master username for the database"
  value       = aws_db_instance.terra.username
}

output "mysql_user_password" {
  description = "The master password for the database"
  value       = random_string.password.result
}