<<<<<<< HEAD
variable "aws_region" {
  default = "us-east-1"
}
variable "vpc_cidr" {
  default = "10.10.0.0/16"
}
variable "public_subnets_cidr" {
  type        = list(any)
  default     = ["10.10.0.0/19", "10.10.32.0/19", "10.10.64.0/19"]
  description = "Public subnet for Webservers servers"
}
variable "private_subnets_cidr" {
  type        = list(any)
  default     = ["10.10.128.0/19", "10.10.160.0/19", "10.10.192.0/19"]
  description = "private subnet for Application servers"
}
variable "privatedb_subnet" {
  type        = list(any)
  default     = ["10.10.96.0/19", "10.10.224.0/19"]
  description = "private subnet for Database servers"
}
variable "azs" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

=======
variable "aws_region" {
  default = "us-east-1"
}
variable "vpc_cidr" {
  default = "10.10.0.0/16"
}
variable "public_subnets_cidr" {
  type        = list(any)
  default     = ["10.10.0.0/19", "10.10.32.0/19", "10.10.64.0/19"]
  description = "Public subnet for Webservers servers"
}
variable "private_subnets_cidr" {
  type        = list(any)
  default     = ["10.10.128.0/19", "10.10.160.0/19", "10.10.192.0/19"]
  description = "private subnet for Application servers"
}
variable "privatedb_subnet" {
  type        = list(any)
  default     = ["10.10.96.0/19", "10.10.224.0/19"]
  description = "private subnet for Database servers"
}
variable "azs" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
>>>>>>> origin
