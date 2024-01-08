variable "instance_type" {
 type = string
 default = "t2.micro"
 description = "EC2 instance type"
}

variable "instance_name" {
 type = string
 description = "EC2 instance name"
}

variable "instance_ami" {
 type = string
 description = "EC2 instance ami"
}

variable "ssh_keypath" {
 type = string
 default = "./id_rsa.pub"
 description = "path of ssh key"
}