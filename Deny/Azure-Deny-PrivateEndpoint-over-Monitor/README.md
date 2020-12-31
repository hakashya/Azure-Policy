# Deny creation of PrivateEndpoint with Azure Monitor

This policy would use deny creation of privateEndpoint when associated to Azure Monitor. 

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2Fdeny%2FAzure-Deny-PrivateEndpoint-over-Monitor%2FAzurePolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "Deny Private endpoint creation for Azure Monitor" -DisplayName "Deny Private endpoint creation for Azure Monitor" -description "This policy would make use of deny effect to restrict creation of private Endpoints with Azure Monitor" -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-Deny-PrivateEndpoint-over-Monitor/AzurePolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-Deny-PrivateEndpoint-over-Monitor/AzurePolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'Deny Private endpoint creation for Azure Monitor' --display-name 'Deny Private endpoint creation for Azure Monitor' --description 'This policy would make use of deny effect to restrict creation of private Endpoints with Azure Monitor
' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-Deny-PrivateEndpoint-over-Monitor/AzurePolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-Deny-PrivateEndpoint-over-Monitor/AzurePolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "" 

````