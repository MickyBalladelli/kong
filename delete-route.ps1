# curl -X POST --url http://192.168.99.100:8001/services/my-api/routes --data 'paths[]=/helloapi'

$server = 'localhost'
$verb = 'DELETE'
$name = '7d366165-de29-48a6-9ead-01643dd9e0ca'
$url  = "http://$($server):8001/services/rest-api/routes/$name"

Invoke-RestMethod  -Method $verb -Uri $url
