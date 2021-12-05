# curl -X POST --url http://192.168.99.100:8001/services/my-api/routes --data 'paths[]=/helloapi'

$server = 'localhost'
$verb = 'DELETE'
$id = 'c1f4e672-dc2f-424c-a669-3311db69f5b0'
$url  = "http://$($server):8001/services/rest-api/routes/$id"

Invoke-RestMethod  -Method $verb -Uri $url
