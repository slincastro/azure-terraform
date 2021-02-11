# azure-terraform

> Install Azure CLI :

`brew update && brew install azure-cli`

`az login`

> For macOS :

`brew install terraform`

> Start terraform : 

`terraform init`

* Generate Plan

`terraform plan -out test.tfplan`

* Apply infrastructure

`terraform apply -var-file="configurations.tfvars" `

* Destroy infrastructure

`terraform destroy`