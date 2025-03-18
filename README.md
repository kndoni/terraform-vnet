# How it works

Terraform commands to deploy terraform code:

```bash
az login
cd environment/dev
terraform init -upgrade -reconfigure
terraform plan -out=ollamaplan
terraform apply "ollamaplan"
```
prod:
```bash
az login
cd environment/prod
terraform init -upgrade -reconfigure
terraform plan -out=ollamaplan
terraform apply "ollamaplan"
```