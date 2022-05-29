# crispy-octo-lamp

## Pulumi:
```powershell
cd infra
pulumi up #also when adding new changes
#teardown with:
pulumi destroy
```

## Helm:
### First - build and push the image to a container registry, and make sure your cluster has access. For AKS, use the following az cli command:
```
az aks update -n <aks-cluster-name> -g <resource-group-name> --attach-acr <acr-name>
```

### update the helm values.yaml file (provide image name and tag)

### install application to k8s with helm:
```powershell
cd helm/webapp
helm install -f backend-values.yaml backend-release .
helm install -f frontend-values.yaml frontend-release .
```

## Docker:

### build all with docker compose
```powershell
docker-compose build
```

### run all locally with docker-compose
```powershell
docker-compose up
```

### backend build:
```powershell
docker build -t crispy-backend .
```

### backend run:
```powershell
docker run -it --rm --name crispy-backend -p 5000:80 crispy-backend
```

### frontend build for production:
```powershell
docker build -t crispy-frontend .
```

### frontend run for production:
```powershell
docker run --rm -it --name crispy-frontend -p 3000:3000 crispy-frontend
```
