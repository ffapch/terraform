resource "aws_db_subnet_group" "default" {
  name = "main"
  subnet_ids = var.subnet_ids
}

resource "aws_db_instance" "this" {
  instance_class = var.instance_class
  engine = "mysql"
  engine_version = "5.7"
  name = var.instance_name
  username = var.username
  password = var.password
  db_subnet_group_name = aws_db_subnet_group.default.name
  allocated_storage = 20
  storage_type = "gp2"
}

