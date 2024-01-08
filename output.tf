# affichage @ip publique de l'instance
output "ip_publique" {
  description = "aws_instance.main.public_ip"
  value       = aws_instance.main.public_ip
}