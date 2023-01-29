###############################
## Variables to control naming
###############################
variable "environment" {
	type= string	
}

variable "resourceGroupRoot" {
	type = string
	default = "flche-dns"
}

variable "regionCode" {
	type = string
	default = "East US"
}

variable "regionName" {
	type = string
	default = "azuse"
}

variable "cluster-base-domain" {
  	type = string
}

variable "a-records" {
	type = list(object({
		name = string
		ip = string
	}))
}
variable "mx-records" { 
	type = list(object({
		name = string
		records = list(object({
			preference = string
			exchange = string
		}))
	}))
}
variable "txt-records" {
	type = list(object({
		name = string
		value = string
	}))
}

locals {
  	tags = {
		owner = "mgkaiser@hotmail.com"  
		terraform-script = "flche-dns"
		platform-application = "DNS for flche.net"
		environment = var.environment
	}		
}