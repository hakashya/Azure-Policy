# Audit the storage account when delete retention policy is disabled

This Policy would audit the storage accounts where the the delete retention policy for blob services are in disabled state.

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FAudit%2FAzure-Blob-Audit-Delete-Retention-Enablement%2FAzurePolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "Audit Storage account when blob delete retention policy is disabled" -DisplayName "Audit Storage account for Blob Delete Retention Policy" -description "This Policy would audit the storage accounts where the the delete retention policy for blob services are in disabled state." -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Audit/Azure-Blob-Audit-Delete-Retention-Enablement/AzurePolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Audit/Azure-Blob-Audit-Delete-Retention-Enablement/AzurePolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'Audit Storage account when blob delete retention policy is disabled' --display-name 'Audit Storage account for Blob Delete Retention Policy' --description 'This Policy would audit the storage accounts where the the delete retention policy for blob services are in disabled state.' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Audit/Azure-Blob-Audit-Delete-Retention-Enablement/AzurePolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Audit/Azure-Blob-Audit-Delete-Retention-Enablement/AzurePolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "Audit Storage account when blob delete retention policy is disabled" 

````