#curl -i http://192.168.99.100:8080/hello

$server = 'localhost'
$verb = 'GET'
$url  = "http://$($server):5050/hello/world"

Invoke-RestMethod  -Method $verb -Uri $url
