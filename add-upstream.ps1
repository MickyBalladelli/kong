$server = 'localhost'
$verb = 'POST'
$url  = "http://$($server):8001/upstreams"

$body = @{
  name         =  'helloworldapi'
}
Invoke-RestMethod  -Method $verb -Uri $url -body $body

