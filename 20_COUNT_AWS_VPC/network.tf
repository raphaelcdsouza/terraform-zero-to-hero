resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-terraform-count"
  }
}

resource "aws_subnet" "subnet" {
  count = 3

  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.${count.index + 1}.0/24"

  tags = {
    Name = "subnet-terraform-${count.index + 1}"
  }
}
