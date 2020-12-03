# Enable DDOS Protection on subnets on Azure

This policy will deploy an ARM template for enabling DDOS Plan for all subnets. The policy checks whether the subnet has a DDOS protection enabled. Based on the result of the policy condition, using the "deployIfNotExists" effect, it deploys an ARM template to associate an existing DDOS Plan. The existing DDOS Plan's resource ID must be provided in the variable section (line 61 of azurepolicy.json).

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FCollections%2FAzure-Enable-DDOSPlan-Virtual-Network%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "DDOS-Protection" -DisplayName "Enable DDOS Protection on subnets" -description "This policy will deploy an ARM template for enabling DDOS Plan for all subnets. The policy checks whether the subnet has a DDOS protection enabled. Based on the result of the policy condition, using the 'deployIfNotExists' effect, it deploys an ARM template to associate an existing DDOS Plan. The existing DDOS Plan's resource ID must be provided in the variable section." -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Enable-DDOSPlan-Virtual-Network/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Enable-DDOSPlan-Virtual-Network/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition -PolicyParameter <Parameters>
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'DDOS-Protection' --display-name 'Enable DDOS Protection on subnets' --description 'This policy will deploy an ARM template for enabling DDOS Plan for all subnets. The policy checks whether the subnet has a DDOS protection enabled. Based on the result of the policy condition, using the "deployIfNotExists" effect, it deploys an ARM template to associate an existing DDOS Plan. The existing DDOS Plan's resource ID must be provided in the variable section.' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Enable-DDOSPlan-Virtual-Network/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Enable-DDOSPlan-Virtual-Network/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "DDOS-Protection" --params <Parameters>

````