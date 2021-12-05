# curl -X POST --url http://192.168.99.100:8001/services/my-api/routes --data 'paths[]=/helloapi'

$server = 'localhost'
$verb = 'DELETE'
$name = '114cf11c-cc60-44b0-b054-2ab510f065b2'
$url  = "http://$($server):8001/services/$name"

Invoke-RestMethod  -Method $verb -Uri $url
