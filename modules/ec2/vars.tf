variable "ec2_count" {
  default = "1"
}

variable "ami_id" {

  default = "ami-052cef05d01020f1d"
}

variable "instance_type" {
  default = "t2.nano"         # this default if we pass varable inside our main terraform file then it will use that 
                              # there you can use by variabl.tf also we can use combination of terraform.tfvars with variable.tf
}

variable "subnet_id" {}
