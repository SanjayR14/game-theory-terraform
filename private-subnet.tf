resource "aws_subnet" "private_subnet_1" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.3.0/24"

  availability_zone = "ap-south-1a"

  tags = {
    Name = "game-theory-private-subnet-1"

    "kubernetes.io/role/internal-elb" = "1"
  }
}

resource "aws_subnet" "private_subnet_2" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.4.0/24"

  availability_zone = "ap-south-1b"

  tags = {
    Name = "game-theory-private-subnet-2"

    "kubernetes.io/role/internal-elb" = "1"
  }
}
