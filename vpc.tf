resource "aws_vpc" "vpc_main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "dev1_vpc"
  }
}
