resource "aws_vpc" "Project1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = var.resource_tags
}

resource "aws_subnet" "Public1" {
  vpc_id            = aws_vpc.Project1.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = var.resource_tags
}

resource "aws_subnet" "Public2" {
  vpc_id            = aws_vpc.Project1.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = var.resource_tags
}

resource "aws_subnet" "Public3" {
  vpc_id            = aws_vpc.Project1.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1c"

  tags = var.resource_tags
}