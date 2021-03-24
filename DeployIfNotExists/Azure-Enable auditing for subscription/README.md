# Deploy an diagnostic logging to subscription

This policy would leverage DeployIfNotExists effect to enable diagnostic logging at subscription level

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FCollections%2FDeploy diagnostic at subscription%2FAzurePolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "Deploy diagnostic logging at subscription" -DisplayName "Deploy diagnostic logging at subscription" -description "This policy would leverage DeployIfNotExists effect to enable diagnostic logging at subscription level" -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Deploy diagnostic at subscription/AzurePolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Deploy diagnostic at subscription/AzurePolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'Deploy diagnostic logging at subscription' --display-name 'Deploy diagnostic logging at subscription' --description 'This policy would leverage DeployIfNotExists effect to enable diagnostic logging at subscription level
' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Deploy diagnostic at subscription/AzurePolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Deploy diagnostic at subscription/AzurePolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "Deploy diagnostic logging at subscription" 

````