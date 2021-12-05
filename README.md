Kong test environment

### Get the image

```docker pull kong```

## getting started
### create kong network
```docker network create kong-net```

### get postgres ready
```
docker run -d --name kong-database --network=kong-net \
-e "POSTGRES_USER=kong" -e "POSTGRES_DB=kong" -e "POSTGRES_PASSWORD=kong" \
-p 5432:5432 postgres:9.6

```

---

### build

```docker build -t kong:1.0.0 .```

### run
```docker run -p kong:1.0.0```