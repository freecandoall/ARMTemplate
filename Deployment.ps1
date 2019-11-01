$rootPath = if ($psISE) { Split-Path -Path $psISE.CurrentFile.FullPath } else { $global:PSScriptRoot }
$subPath = "temp01.json";

$fullPath = $rootPath + "\" + $subPath

$iotRoot = $rootPath + "\" + "IotSample\"
$vmRoot = $rootPath + "\" + "vmSample\"
$webRoot = $rootPath + "\" + "WebAppSample\"


$targetJson = $webRoot + "Web_vmLinux.json"
$targetJson

#Connect-AzAccount
#Set-AzContext -SubscriptionId "xxxx-xxxx-xxxx-xxxx"
New-AzDeployment -Location "koreacentral" -TemplateFile $targetJson