# Azure Terraform

## Login to Azure

```BASH
az login
```

## Initialize your workspace

```BASH
terraform init -backend-config="storage_account_name=kaisergurustorage" -backend-config="container_name=tfstate" -backend-config="access_key=**********" -backend-config="key=flche.aks.tfstate"
```
## Select a workspace

```BASH
terraform workspace select flche
```

## Plan

```BASH
terraform plan --var-file=./env/flche.tfvars
```

## Apply

```BASH
terraform apply --var-file=./env/flche.tfvars
```

## Destroy

```BASH
terraform destroy --var-file=./env/flche.tfvars
```
