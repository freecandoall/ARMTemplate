$rootPath = if ($psISE) { Split-Path -Path $psISE.CurrentFile.FullPath } else { $global:PSScriptRoot }
$subPath = "temp01.json";

$fullPath = $rootPath + "\" + $subPath

$iotRoot = $rootPath + "\" + "IotSample\"
$vmRoot = $rootPath + "\" + "vmSample\"
$webRoot = $rootPath + "\" + "WebAppSample\"


$targetJson = $webRoot + "Web_vmLinux.json"
#$targetJson = $webRoot + "Web_vmWindowSql_function.json"
$targetJson

#Connect-AzAccount
#Get-AzSubscription
#Set-AzContext -SubscriptionId "xxxx-xxxx-xxxx-xxxx"
New-AzDeployment -Location "koreacentral" -TemplateFile $targetJson
#New-AzDeployment -Location "koreacentral" -TemplateFile $webRoot + "Web_vmWindowSql_function.json"