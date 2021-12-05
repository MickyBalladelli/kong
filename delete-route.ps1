# curl -X POST --url http://192.168.99.100:8001/services/my-api/routes --data 'paths[]=/helloapi'

$server = 'localhost'
$verb = 'DELETE'
$id = '921fa5f8-0f90-43d6-813a-c4595b38bd00'
$url  = "http://$($server):8001/routes/$id"

Invoke-RestMethod  -Method $verb -Uri $url
