resource "aws_internet_gateway" "ig_public" {
  vpc_id = aws_vpc.vpc_main.id

  tags = {
    Name = "Dev1 interenet gateway"
  }
}

module "subnet_1" {
  source = "./aws_public_vpc"
  vpc_id = aws_vpc.vpc_main.id
  ig_id = aws_internet_gateway.ig_public.id
  cidr_block = "10.0.0.0/24"
}

module "subnet_2" {
  source = "./aws_public_vpc"
  vpc_id = aws_vpc.vpc_main.id
  ig_id = aws_internet_gateway.ig_public.id
  cidr_block = "10.0.1.0/24"
}
