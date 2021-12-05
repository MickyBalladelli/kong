Kong test environment (from https://wstutorial.com/misc/api-gateway-kong.html)

## getting started
### create kong network
```docker network create kong-net```

### get postgres ready
```
docker run -d --name kong-database --network=kong-net -e "POSTGRES_USER=kong" -e "POSTGRES_DB=kong" -e "POSTGRES_PASSWORD=kong" -p 5432:5432 postgres:9.6

docker run --rm --network=kong-net -e "KONG_DATABASE=postgres" -e "KONG_PG_HOST=kong-database" -e "KONG_PG_PASSWORD=kong" kong:latest kong migrations bootstrap
```

### pull hello-world-rest
```
docker pull vad1mo/hello-world-rest

docker run -d --name hello-world-rest --network=kong-net -p 5050:5050 vad1mo/hello-world-rest:latest
```

### start kong
```
docker run -d --name kong --network=kong-net -e "KONG_DATABASE=postgres" -e "KONG_PG_HOST=kong-database" -e "KONG_PG_PASSWORD=kong" -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" -e "KONG_PROXY_ERROR_LOG=/dev/stderr" -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" -e "KONG_ADMIN_LISTEN=0.0.0.0:8001, 0.0.0.0:8444 ssl" -p 8000:8000 -p 8443:8443 -p 8001:8001 -p 8002:8002 -p 8444:8444 kong:latest
```
## additional commands

### list running containers
```docker ps -a```

### to test that kong is responding (using PowerShell)
```
Test-NetConnection localhost -port 8001
```

### add a service
```
curl -X POST --url http://<server>:8001/services/ --data 'name=my-api' --data 'url=http://<backend server>:8080'
```
Key: backend server is a fqdn that must be visible from inside the docker container

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
name               : restapi
connect_timeout    : 60000
tls_verify_depth   :
read_timeout       : 60000
tags               :
write_timeout      : 60000
ca_certificates    :
```

PowerShell version see ```add-service.ps1```


### add a route 

```curl -X POST --url http://<server>:8001/services/rest-api/routes --data 'paths[]=/helloapi'```

Response:
```
tags                       :
https_redirect_status_code : 426
id                         : b001bebd-dc00-4dc7-8592-03136378eaad
created_at                 : 1638711537
updated_at                 : 1638711537
paths                      : {/helloworldapi}
headers                    :
destinations               :
strip_path                 : True
name                       :
preserve_host              : False
regex_priority             : 0
hosts                      :
response_buffering         : True
service                    : @{id=a6d7ebfd-e60a-4a52-9e5b-3a4857c1372b}
path_handling              : v0
protocols                  : {http, https}
request_buffering          : True
snis                       :
sources                    :
methods                    :
```

The Powershell version is at ```add-route.ps1```

### call the API directly

```curl -i http://192.168.99.100:8080/hello/world```

### call the API via kong


