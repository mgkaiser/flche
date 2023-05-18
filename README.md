# FLCHE Website

## Rancher

## Cert-Manager

## NGINX

## Wordpress

### Change into Wordpress folder
```
cd wordpres-flcher
```

### Test Helm Chart
```
helm template wordpress-flche . -f values.yaml -n wordpress-flche --debug 
```

### Update 
```
helm upgrade wordpress-flche . -f values.yaml -n wordpress-flche 
```

<https://github.com/bitnami/charts/tree/main/bitnami/wordpress>

