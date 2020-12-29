# Deny creation of Network Interface if it is associated to a disallowed subnet

This policy will block the create or update operation on Network Interfaces if the subnet chosen is not allowed. The disallowed subnet resource IDs are passed to the policy as parameters.

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FDeny%2FAzure-NIC-In-Incorrect-Subnet%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "DenyNICinIncorrectSubnet" -DisplayName "Deny NIC in Incorrect Subnets" -description "This policy will block the create or update operation on Network Interfaces if the subnet chosen is not allowed. The disallowed subnet resource IDs are passed to the policy as parameters." -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-NIC-In-Incorrect-Subnet/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-NIC-In-Incorrect-Subnet/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition -PolicyParameter <Parameters>
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'DenyNICinIncorrectSubnet' --display-name 'Deny NIC in Incorrect Subnets' --description 'This policy will block the create or update operation on Network Interfaces if the subnet chosen is not allowed. The disallowed subnet resource IDs are passed to the policy as parameters.' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-NIC-In-Incorrect-Subnet/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-NIC-In-Incorrect-Subnet/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "LinuxDiskEncryption" --params <Parameters>

````