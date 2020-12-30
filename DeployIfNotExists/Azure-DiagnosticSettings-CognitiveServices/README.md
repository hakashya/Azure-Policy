# Deploy diagnostic settings for Azure Cognitive Service accounts if missing

This policy will check for the existence of diagnostics setting on Azure Cognitive Service accounts. If the diagnostic setting is missing, the policy deploys the diagnostic setting as per the rules of deployIfNotExists (![described here](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/effects#deployifnotexists)).

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FDeployIfNotExists%2FAzure-DiagnosticSettings-CognitiveServices%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "DeployCognitiveServiceDiagnostics" -DisplayName "Deploy Diagnostic Setting for Cognitive Services" -description "This policy will check for the existence of diagnostics setting on Azure Cognitive Service accounts. If the diagnostic setting is missing, the policy deploys the diagnostic setting as per the rules of deployIfNotExists." -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-DiagnosticSettings-CognitiveServices/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure-DiagnosticSettings-CognitiveServices/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition -PolicyParameter <Parameters>
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'DeployCognitiveServiceDiagnostics' --display-name 'Deploy Diagnostic Setting for Cognitive Services' --description 'This policy will check for the existence of diagnostics setting on Azure Cognitive Service accounts. If the diagnostic setting is missing, the policy deploys the diagnostic setting as per the rules of deployIfNotExists.' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-DiagnosticSettings-CognitiveServices/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure-DiagnosticSettings-CognitiveServices/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "DeployCognitiveServiceDiagnostics" --params <Parameters>

````