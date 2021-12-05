# curl -X POST --url http://192.168.99.100:8001/services/my-api/routes --data 'paths[]=/helloapi'

$server = 'localhost'
$verb = 'POST'
$url  = "http://$($server):8001/services/rest-api/routes"

$body = @{
  name         =  'helloworldapi2'
  paths        =  '/helloworldapi2'
  methods      =  'GET'
}
Invoke-RestMethod  -Method $verb -Uri $url -body $body

<#
tags                       :
https_redirect_status_code : 426
id                         : b001bebd-dc00-4dc7-8592-03136378eaad
created_at                 : 1638711537
updated_at                 : 1638711537
paths                      : {/helloapi}
headers                    :
destinations               :
strip_path                 : True
name                       :
preserve_host              : False
regex_priority             : 0
hosts                      :
response_buffering         : True
service                    : @{id=a6d7ebfd-e60a-4a52-9e5b-3a4857c1372b}
path_handling              : v0
protocols                  : {http, https}
request_buffering          : True
snis                       :
sources                    :
methods                    :
#>