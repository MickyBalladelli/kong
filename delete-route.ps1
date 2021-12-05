# curl -X POST --url http://192.168.99.100:8001/services/my-api/routes --data 'paths[]=/helloapi'

$server = 'localhost'
$verb = 'DELETE'
$name = 'd5950650-f5f8-4ced-8f57-38259a47ba00'
$url  = "http://$($server):8001/services/rest-api/routes/$name"

Invoke-RestMethod  -Method $verb -Uri $url
