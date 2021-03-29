# Enable Soft Delete in Storage Account if not already done

This policy will check if the new Storage Account has soft delete enabled. If the soft delete feature is turned off, this policy will go ahead and deploy an ARM template to enable soft delete on that particular Storage Account.

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FDeployIfNotExists%2FAzure-Enable-StorageAccount-SoftDelete%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "EnableStorageAccountSoftDelete" -DisplayName "Enable Storage Account Soft Delete" -description "This policy will check if the new Storage Account has soft delete enabled. If the soft delete feature is turned off, this policy will go ahead and deploy an ARM template to enable soft delete on that particular Storage Account" -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure-Enable-StorageAccount-SoftDelete/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure-Enable-StorageAccount-SoftDelete/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition -PolicyParameter <Parameters>
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'EnableStorageAccountSoftDelete' --display-name 'Enable Storage Account Delete' --description 'This policy will check if the new Storage Account has soft delete enabled. If the soft delete feature is turned off, this policy will go ahead and deploy an ARM template to enable soft delete on that particular Storage Account' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure-Enable-StorageAccount-SoftDelete/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure-Enable-StorageAccount-SoftDelete/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "EnableStorageAccountSoftDelete" --params <Parameters>

````
