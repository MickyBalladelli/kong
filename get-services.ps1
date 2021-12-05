# curl -X GET --url http://192.168.99.100:8001/services/ 
$server = 'localhost'
$verb = 'GET'
$url  = "http://$($server):8001/services/"

$result = Invoke-RestMethod  -Method $verb -Uri $url

$result.data

<#
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
#>