provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "myvpc" {
    cidr_block = var.cidr
}
resource "aws_subnet" "sub1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "20.0.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
}
resource "aws_subnet" "sub2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "20.0.1.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id
}
