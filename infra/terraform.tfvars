region        = "eu-west-2"
ami_id        = "ami-07c1b39b7b3d2525d"
instance_type = "t2.micro"
key_pair      = "ubuntu-kp"

# prod
prod_cidr_block          = "10.10.0.0/16"
prod_vpc_name            = "prod"
prod_public_rt           = "prod-public-rt"
prod_private_rt_with_int = "prod-private-rt-with-int"
prod_private_rt          = "prod-private-rt"
prod_igw                 = "prod-igw"
prod_nat                 = "prod-nat"
prod_sg_name             = "prod-sg"

# prod
dev_cidr_block = "10.0.0.0/16"
dev_vpc_name   = "dev"
dev_public_rt  = "dev-public-rt"
dev_private_rt = "dev-private-rt"
dev_igw        = "dev-igw"
dev_sg_name    = "dev-sg"