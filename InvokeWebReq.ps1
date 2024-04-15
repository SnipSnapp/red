#List USer Agents
[Microsoft.PowerShell.Commands.PSUserAgent].GetProperties() | Select-Object Name,@{label="User Agent";Expression={[Microsoft.PowerShell.Commands.PSUserAgent]::$($_.Name)}} | fl
#Set USer Agent to Chrome (Change to any of the listed tho)
$UserAgent = [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
#InvokeWebReq w/ User Agent
Invoke-WebRequest http://<URL/IP>/<FILE> -UserAgent $UserAgent -OutFile "<SAVE DE FEIL>"
