# crispy-octo-lamp

# run all locally with docker-compose
```
docker-compose up
```

# backend build:
```
docker build -t crispy-backend .
```

# backend run:
```
docker run -it --rm --name crispy-backend -p 5000:80 crispy-backend
```

# frontend build for production:
```
docker build -t crispy-frontend .
```

# frontend run for production:
```
docker run --rm -it --name crispy-frontend -p 3000:3000 crispy-frontend
```
