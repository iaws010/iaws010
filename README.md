# IAWS010-TP

Fichiers de configuration terraform pour creer une instance ec2.
Le backend se trouve sur un stockage S3 et l'instance est accessible en ssh ( utilisateur selon AMI )

## Installation

- creer un bucket s3 ( iaws010-tp par defaut )

- cloner ce depot 
```bash
git clone
```

- creer une paire de clefs ssh
```bash
ssh-keygen -f ./id_rsa -t rsa -b 4096
```

- Mettre les clefs AWS en variables d'environnement
```bash
export AWS_ACCESS_KEY_ID="<votre_acces_key_aws>"
export AWS_SECRET_ACCESS_KEY="<votre_secret_key_aws>"
```

- init du dossier terraform et appliquer la configuration
```bash
terraform init
terraform apply
```
#### terraform va repondre avec l'@IP de l'instance et son id
```bash
aws_vpcmyvpcid = "vpc-082b68fbd732150a5"
instance_ip = "35.180.68.249"
```

## variables

Certaines variables doivent etre modifiées dans le fichier tfvars 
```bash
# Type d'instance ( t2.micro par defaut )
instance_type = 

# Nom de l'instance
instance_name = 

# chemin de la clefs ssh ( ./id_rsa.pub par defaut )
ssh_keypath = 
```
## Notes perso

- J'ai eu quelques difficultés a comprendre la partie reseau et vpc 
- j'ai toujours pas reussi a mettre des variables dans la definition du S3 ( j'ai essayé par locals mais ca n'a pas fonctionné )