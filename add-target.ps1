$server = 'localhost'
$verb = 'POST'
$url  = "http://$($server):8001/upstreams/localhost:5050/targets"

$body = @{
  tags           =  @('helloworld')
}
Invoke-RestMethod  -Method $verb -Uri $url -body $body

