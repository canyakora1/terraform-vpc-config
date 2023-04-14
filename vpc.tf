# Create a custom VPC
resource "aws_vpc" "cloudbootcamp_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    "Name" = "Cloud-Test1"
  }
}

# Create an Internet Gateway
resource "aws_internet_gateway" "cloud_test_igw" {
  vpc_id = aws_vpc.cloudbootcamp_vpc.id
  tags = {
    "Name" = "main"
  }
}

# Create Public Subnets
resource "aws_subnet" "public_test1" {
  count                   = length(var.public_subnets_cidr)
  vpc_id                  = aws_vpc.cloudbootcamp_vpc.id
  cidr_block              = element(var.public_subnets_cidr, count.index)
  availability_zone       = element(var.azs, count.index)
  map_public_ip_on_launch = true
  tags = {
    "Name" = "Subnet-${count.index + 1}"
  }
}

# Create Private Subnets
resource "aws_subnet" "private_test1" {
  count                   = length(var.private_subnets_cidr)
  vpc_id                  = aws_vpc.cloudbootcamp_vpc.id
  cidr_block              = element(var.private_subnets_cidr, count.index)
  availability_zone       = element(var.azs, count.index)
  map_public_ip_on_launch = false
  tags = {
    "Name" = "Subnet-${count.index + 1}"
  }
}
# Create a route-table
resource "aws_route_table" "public_cloudboot_rt" {
  vpc_id = aws_vpc.cloudbootcamp_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cloud_test_igw.id
  }
  tags = {
    "Name" = "PublicRouteTable"
  }
}
# Create the Route table subnet association
resource "aws_route_table_association" "a" {
  count          = length(var.public_subnets_cidr)
  subnet_id      = element(aws_subnet.public_test1.*.id, count.index)
  route_table_id = aws_route_table.public_cloudboot_rt.id
}
# Create a Nat Gateway

