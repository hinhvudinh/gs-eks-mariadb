### RDS(Mysql)
output "mysql_endpoint" {
  description = "The connection endpoint"
  value       = module.rds.mysql_endpoint
}

output "mysql_user_name" {
  description = "The master username for the rdsbase"
  value       = module.rds.mysql_user_name
}

output "mysql_user_password" {
  description = "The master password for the rdsbase"
  value       = module.rds.mysql_user_password
}