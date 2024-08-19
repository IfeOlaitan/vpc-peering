variable "region" {
  description = "AWS region"
  type        = string
}

# prod
variable "prod_cidr_block" {
  description = "CIDR block for the production VPC"
  type        = string
}

variable "prod_vpc_name" {
  description = "Name for the production VPC"
  type        = string
}

variable "prod_public_rt" {
  description = "Name for the production public route table"
  type        = string
}

variable "prod_private_rt_with_int" {
  description = "Name for the production private route table"
  type        = string
}

variable "prod_private_rt" {
  description = "Name for the production private route table"
  type        = string
}

variable "prod_igw" {
  description = "Name for the production internet gateway"
  type        = string
}