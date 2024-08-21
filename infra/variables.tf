# general
variable "region" {
  description = "AWS region"
  type        = string
}

variable "ami_id" {
  description = "AMI id for EC2"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
}

variable "key_pair" {
  description = "Key pair for EC2"
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

variable "prod_nat" {
  description = "Name for the production nat gateway"
  type        = string
}

variable "prod_sg_name" {
  description = "Name for the production security group"
  type        = string
}


# dev
variable "dev_cidr_block" {
  description = "CIDR block for the development VPC"
  type        = string
}

variable "dev_vpc_name" {
  description = "Name for the development VPC"
  type        = string
}

variable "dev_public_rt" {
  description = "Name for the development public route table"
  type        = string
}

variable "dev_private_rt" {
  description = "Name for the development private route table"
  type        = string
}

variable "dev_igw" {
  description = "Name for the development internet gateway"
  type        = string
}


variable "dev_sg_name" {
  description = "Name for the development security group"
  type        = string
}