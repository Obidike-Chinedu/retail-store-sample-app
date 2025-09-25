provider "aws" {
  region = "us-east-1"
}

# ✅ RDS for PostgreSQL (orders service)
resource "aws_db_instance" "orders_db" {
  identifier        = "orders-db"
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  username          = "ordersadmin"
  password          = "OrdersPass123!"
  skip_final_snapshot = true
}

# ✅ RDS for MySQL (catalog service)
resource "aws_db_instance" "catalog_db" {
  identifier        = "catalog-db"
  engine            = "mysql"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  username          = "catalogadmin"
  password          = "CatalogPass123!"
  skip_final_snapshot = true
}

# ✅ DynamoDB for carts service
resource "aws_dynamodb_table" "carts_table" {
  name           = "Carts"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "customerId"

  attribute {
    name = "customerId"
    type = "S"
  }
}
