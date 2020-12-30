# Deny creation of PostgreSql flexible server without private endpoint 

This policy would use Deny effect to block creation of flexible server if private endpoint is not specified. 
## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FDeny%2FDeny creation of PostgreSql server without private Endpoint%2FAzurePolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "Deny creation of PostgreSql server without private Endpoint" -DisplayName "Deny creation of PostgreSql server without private Endpoint" -description "This policy would leverage deny effect to restrict creation of Postgresql servers without private endpoint" -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Deny Flexible server without private endpoint/AzurePolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Deny Flexible server without private endpoint/AzurePolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'Deny creation of PostgreSql server without private Endpoint' --display-name 'Deny creation of PostgreSql server without private Endpoint' --description 'Deny creation of PostgreSql server without private Endpoint
' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Deny Flexible server without private endpoint/AzurePolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Deny Flexible server without private endpoint/AzurePolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "Deny creation of PostgreSql server without private Endpoint" 

````