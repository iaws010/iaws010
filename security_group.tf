# Création d'un groupe de sécurité pour autorise le port 22/tcp et assignation au vpc "myvpc"
resource "aws_security_group" "mysg" {
  vpc_id = aws_vpc.myvpc.id

  ingress { 
    description      = "SSH from VPC" 
    from_port        = 22 
    to_port          = 22 
    protocol         = "tcp" 
    cidr_blocks      = ["0.0.0.0/0"]
   } 

  egress { 
     from_port        = 0 
     to_port          = 0 
     protocol         = "-1" 
     cidr_blocks      = ["0.0.0.0/0"]
   } 

  tags = { 
     Name = "allow_ssh" 
   } 
}

