# curl -X POST --url http://192.168.99.100:8001/services/my-api/routes --data 'paths[]=/helloapi'

$server = 'localhost'
$verb = 'DELETE'
$name = 'e8e04219-b881-4e16-995e-5f5f69a25596'
$url  = "http://$($server):8001/routes/$name"

Invoke-RestMethod  -Method $verb -Uri $url
