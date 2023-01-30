resource "azurerm_dns_zone" "base" {
  name                = var.cluster-base-domain
  resource_group_name = azurerm_resource_group.dns-rg.name
}

resource "azurerm_dns_a_record" "a_record" {  
  count               = length(var.a-records)
  name                = var.a-records[count.index].name
  zone_name           = azurerm_dns_zone.base.name
  resource_group_name = azurerm_resource_group.dns-rg.name
  records             =  [ var.a-records[count.index].ip ]  
  ttl                 = 300
}

resource "azurerm_dns_cname_record" "cname_record" {
  count               = length(var.cname-records)
  name                = var.cname-records[count.index].name
  zone_name           = azurerm_dns_zone.base.name
  resource_group_name = azurerm_resource_group.dns-rg.name
  ttl                 = 300  
  record              = var.cname-records[count.index].record 
}

resource "azurerm_dns_mx_record" "mx_record" {
  count               = length(var.mx-records)
  name                = var.mx-records[count.index].name
  zone_name           = azurerm_dns_zone.base.name
  resource_group_name = azurerm_resource_group.dns-rg.name
  ttl                 = 3600

  dynamic "record" {
    for_each = var.mx-records[count.index].records
    content {      
      preference  = record.value.preference
      exchange    = record.value.exchange
    }
  }
}

resource "azurerm_dns_txt_record" "txt_record" {
  count               = length(var.txt-records)
  name                = var.txt-records[count.index].name
  zone_name           = azurerm_dns_zone.base.name
  resource_group_name = azurerm_resource_group.dns-rg.name
  ttl                 = 3600

  dynamic "record" {
    for_each = var.txt-records[count.index].values 
    content {      
      value  = record.value      
    }
  }  
}