# Création d'une passerelle wan
resource "aws_internet_gateway" "wan_gw" {
  vpc_id = aws_vpc.myvpc.id
}

# Création de la route pour envoyer le traffic sortant vers la gateway
resource "aws_route" "route_internet" {
  route_table_id         = aws_vpc.myvpc.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.wan_gw.id
}