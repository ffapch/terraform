resource "aws_subnet" "subnet_1" {
  cidr_block = "10.0.0.0/24"
  vpc_id     = aws_vpc.vpc_main.id

  tags = local.subnet_tags
}

resource "aws_subnet" "subnet_2" {
  cidr_block = "10.0.1.0/24"
  vpc_id     = aws_vpc.vpc_main.id

  tags = local.subnet_tags
}

resource "aws_internet_gateway" "ig_public" {
  vpc_id = aws_vpc.vpc_main.id

  # depends_on = [ aws_vpc.vpc_main.id, aws_subnet.subnet_1, aws_subnet.subnet_2 ]

  tags = {
    Name = "Dev1 interenet gateway"
  }
}


resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.vpc_main.id

  # route = {
  #     ipv4_cidr_block = "::/0"
  #     gateway_id = aws_internet_gateway.ig_public.id
  # }

  tags = {
    Name = "Dev1 route"
  }
}

resource "aws_route_table_association" "rt1_subnet1" {
  route_table_id = aws_route_table.rt1.id
  subnet_id      = aws_subnet.subnet_1.id
}




