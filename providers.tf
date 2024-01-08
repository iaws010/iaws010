# liste des providers requis pour les télécharger
terraform { 
   required_providers { 
    aws = { 
      source  = "hashicorp/aws" 
      version = "~> 5.0" 
    }
}
# Déclaration du backend S3
  backend "s3" { 
    bucket = "iaws010-tp"
    key    = "terraform.tfstate"
    region = "eu-west-3"
   } 
}

# configuaration AWS ( les clefs sont en variable d'environnement )
provider "aws" { 
    region = "eu-west-3"
}