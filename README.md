Kong test environment (from https://wstutorial.com/misc/api-gateway-kong.html)

## getting started
### create kong network
```docker network create kong-net```

### get postgres ready
```
docker run -d --name kong-database --network=kong-net -e "POSTGRES_USER=kong" -e "POSTGRES_DB=kong" -e "POSTGRES_PASSWORD=kong" -p 5432:5432 postgres:9.6

docker run --rm --network=kong-net -e "KONG_DATABASE=postgres" -e "KONG_PG_HOST=kong-database" -e "KONG_PG_PASSWORD=kong" kong:latest kong migrations bootstrap
```

### start kong
```
docker run -d --name kong --network=kong-net -e "KONG_DATABASE=postgres" -e "KONG_PG_HOST=kong-database" -e "KONG_PG_PASSWORD=kong" -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" -e "KONG_PROXY_ERROR_LOG=/dev/stderr" -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" -e "KONG_ADMIN_LISTEN=0.0.0.0:8001, 0.0.0.0:8444 ssl" -p 8000:8000 -p 8443:8443 -p 8001:8001 -p 8444:8444 kong:latest
```

## additional commands

### list running containers
```docker ps -a```

### to test that kong is responding (using PowerShell)
```
Test-NetConnection localhost -port 8001
```

### add a service
```curl -X POST --url http://192.168.99.100:8001/services/ --data 'name=my-api' --data 'url=http://192.168.99.100:8080'
```

Response:
```
tls_verify         :
host               : localhost
id                 : a6d7ebfd-e60a-4a52-9e5b-3a4857c1372b
path               :
created_at         : 1638707961
updated_at         : 1638707961
retries            : 5
protocol           : http
port               : 8080
client_certificate :
name               : my-api
connect_timeout    : 60000
tls_verify_depth   :
read_timeout       : 60000
tags               :
write_timeout      : 60000
ca_certificates    :
```

PowerShell version see ```add-service.ps1```
