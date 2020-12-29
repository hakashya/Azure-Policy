# Deny creation of resources if the tag values are empty

This policy will block the create or update operation on any resource that has null or empty value for the specified tag name. The policy also does not accept blank values (such as empty space).

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FDeny%2FAzure-Tags-Not-Null-Empty%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "DenyEmptyTagValues" -DisplayName "Deny Empty Tag Values" -description "This policy will block the create or update operation on any resource that has null or empty value for the specified tag name. The policy also does not accept blank values (such as empty space)." -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-Tags-Not-Null-Empty/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-Tags-Not-Null-Empty/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition -PolicyParameter <Parameters>
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'DenyEmptyTagValues' --display-name 'Deny Empty Tag Values' --description 'This policy will block the create or update operation on any resource that has null or empty value for the specified tag name. The policy also does not accept blank values (such as empty space).' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-Tags-Not-Null-Empty/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-Tags-Not-Null-Empty/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "LinuxDiskEncryption" --params <Parameters>

````