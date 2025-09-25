output "orders_db_endpoint" {
  value = aws_db_instance.orders_db.endpoint
}

output "catalog_db_endpoint" {
  value = aws_db_instance.catalog_db.endpoint
}

output "carts_table_name" {
  value = aws_dynamodb_table.carts_table.name
}
