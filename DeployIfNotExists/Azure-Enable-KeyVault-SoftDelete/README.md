# Enable Soft Delete in Key Vault if not aleady done

This policy will check if the new Key Vault has soft delete enabled. If the soft delete feature is turned off, this policy will go ahead and deploy an ARM template to enable soft delete on that particular Key Vault.

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FDeployIfNotExists%2FAzure-Enable-KeyVault-SoftDelete%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "EnableKeyVaultSoftDelete" -DisplayName "Enable Key Vault Soft Delete" -description "This policy will check if the new Key Vault has soft delete enabled. If the soft delete feature is turned off, this policy will go ahead and deploy an ARM template to enable soft delete on that particular Key Vault" -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-Enable-KeyVault-SoftDelete/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure-Enable-KeyVault-SoftDelete/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition -PolicyParameter <Parameters>
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'EnableKeyVaultSoftDelete' --display-name 'Enable Key Vault Soft Delete' --description 'This policy will check if the new Key Vault has soft delete enabled. If the soft delete feature is turned off, this policy will go ahead and deploy an ARM template to enable soft delete on that particular Key Vault' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-Enable-KeyVault-SoftDelete/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure-Enable-KeyVault-SoftDelete/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "EnableKeyVaultSoftDelete" --params <Parameters>

````