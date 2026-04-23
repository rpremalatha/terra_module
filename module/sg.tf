resource "aws_security_group" "myGlobalSg" {
    name = var.sgName
    description = "Allow Http,ssh,hhtps"

    ingress {
        description = "ssh"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [var.cidr1]
        }    

        ingress {
        description = "http"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [var.cidr1]

    }

         egress{
        
        from_port =0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [var.cidr1]

    }
  
  tags = {
    name = var.sgName
  }
}