provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA26C5WJEtestEG"
  secret_key = "+/b4y8otDupTtest6BTpU89cIfnTestBn4z0r9"
}

module "my_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "192.168.0.0/16"
  tenancy     = "default"
  vpc_id      = "${module.my_vpc.vpc_id}"
  subnet_cidr = "192.168.1.0/24"
}

module "my_ec2" {
  source        = "../modules/ec2"
  ec2_count     = 1
  ami_id        = "ami-06a0b4e3b7eb7a300" # make sure this all attribut we have defind in our module file  
                                          # inside we are refring attribut by variable.tf that is default 
                                          # if we never pass here than it will use that 
  instance_type = var.instance_type       # we are refring this from verable file 
  subnet_id     = "${module.my_vpc.subnet_id}"        # and this is how we can access the any module attrebut but in module we have to defind output block and it only accessble from main also same shuld be null in your mudule var file 
}
