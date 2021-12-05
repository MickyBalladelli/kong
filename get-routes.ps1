# curl -X GET --url http://192.168.99.100:8001/routes/ 
$server = 'localhost'
$verb = 'GET'
$url  = "http://$($server):8001/routes/hellowoldapi"

$result = Invoke-RestMethod  -Method $verb -Uri $url

$result.data
