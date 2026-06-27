resource "aws_subnet" "public_subnet_1" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.public_subnet_1

  availability_zone = "ap-south-1a"

  map_public_ip_on_launch = true

  tags = {
    Name = "game-theory-public-subnet-1"

    "kubernetes.io/role/elb" = "1"
  }
}

resource "aws_subnet" "public_subnet_2" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.public_subnet_2

  availability_zone = "ap-south-1b"

  map_public_ip_on_launch = true

  tags = {
    Name = "game-theory-public-subnet-2"

    "kubernetes.io/role/elb" = "1"
  }
}
