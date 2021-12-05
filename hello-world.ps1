#curl -i http://192.168.99.100:8080/hello

$server = 'localhost'
$verb = 'GET'
$url  = "http://$($server):5050/hello/world"

Invoke-RestMethod  -Method $verb -Uri $url


# curl -i -X GET --url http://192.168.99.100:8000/helloapi/hello/world
$result = $null
$url  = "http://$($server):8000/helloworldapi2"

$result = Invoke-RestMethod  -Method $verb -Uri $url
$result