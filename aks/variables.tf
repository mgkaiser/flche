variable "environment" {
	type= string	
}

variable "resourceGroupRoot" {
	type = string
	default = "flche-k8s"
}

variable "regionCode" {
	type = string
	default = "East US"
}

variable "regionName" {
	type = string
	default = "azuse"
}

locals {
  	tags = {
		owner = "mgkaiser@hotmail.com"  
		terraform-script = "flche-aks"
		platform-application = "K8S cluster for FLCHE"
		environment = var.environment
	}			
}