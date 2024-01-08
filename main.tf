# Configuration clefs ssh
resource "aws_key_pair" "ssh_key" {
  key_name   = "${var.instance_name}"
  public_key = file("${var.ssh_keypath}")
}

# Creation de l'instance AWS 
resource "aws_instance" "main" {
  ami = var.instance_ami
  instance_type = "${var.instance_type}"
  key_name = "${var.instance_name}"
# Configuration du subnet et du security group
  subnet_id = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_security_group.mysg.id]
  tags = {
    Name = "${var.instance_name}"
  }
  user_data = <<EOF
#!/bin/bash
echo -e "\nhttps://www.youtube.com/watch?v=dQw4w9WgXcQ\n" >> /etc/motd
EOF
}