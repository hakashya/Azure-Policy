# Deny creation of Network FrontDoor if routing rule has http

This policy will block the create or update operation on Network FrontDoor if the Routing Rules contains http. It only allows https routing rules

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FDeny%2FAzure-NIC-In-Incorrect-Subnet%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "DenyNetworkFrontDoorForHttp" -DisplayName "Deny Network Frontdoor when Routing Rules have http" -description "This policy will block the create or update operation on Network FrontDoor if the Routing Rules contains http. It only allows https routing rules" -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-NetworkFrontdoor-Https-only/azurepolicy.rules.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition -PolicyParameter <Parameters>
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'DenyNetworkFrontDoorForHttp' --display-name 'Deny Network Frontdoor when Routing Rules have http' --description 'This policy will block the create or update operation on Network FrontDoor if the Routing Rules contains http. It only allows https routing rules' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-NetworkFrontdoor-Https-only/azurepolicy.rules.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "DenyNICinIncorrectSubnet" --params <Parameters>

````
