resource "aws_instance" "ec2-instance" {
    ami = var.ami
    instance_type = var.instanceType
    vpc_security_group_ids = [aws_security_group.myGlobalSg.id ]
    key_name = var.keyName
    tags = {
      Name = var.myInstanceName
    }
  
}