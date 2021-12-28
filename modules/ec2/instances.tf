resource "aws_instance" "stagging" {
ami = "ami-0cda377a1b884a1bc"
instance_type = var.instance_type           # if we want to make it editable from main module than we have to 
                                            # call like this var.instance_type only if you hardcode it not editable from main 


}
