# Azure Terraform

## Login to Azure

```BASH
az login
```

## Initialize your workspace

```BASH
terraform init -backend-config="storage_account_name=kaisergurustorage" -backend-config="container_name=tfstate" -backend-config="access_key=26r8yRnC8GACzjEsIThVS1BZuNCDkU8fUa64FTzZZyIUSRVVWiLo15ngrGMwBQtr454++WGbRLfRC9+dMjxtjw==" -backend-config="key=flche.aks.tfstate"
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
# Forms
## Pro license

In order to purchase the Pro license, you'll need to open this special link: 
https://wpforms.com/checkout?edd_action=add_to_cart&download_id=290008&edd_options[price_id]=3
This link will take you directly to a checkout page, and there you should see a $99 USD Pro license in your cart.
Please note that the Pro nonprofit license is limited to 5 sites.


## Elite license

In order to purchase the Elite license, you'll need to open this special link: 
https://wpforms.com/checkout?edd_action=add_to_cart&download_id=290232&edd_options%5Bprice_id%5D=3
This link will take you directly to a checkout page, and there you should see a $199 USD Elite license in your cart. In case it helps to share, the Elite license provides everything you get with a Pro license plus additional addons like Webhooks, ActiveCampaign, Authorize.Net, and the Salesforce addons.
Please note that the Elite nonprofit license is limited to 5 sites.

## Transfer DNS to Azure
https://edi.wang/post/2017/6/2/migrate-domain-dns-to-azure#:~:text=Go%20to%20the%20management%20portal,old%20DNS%20records%20to%20Azure.