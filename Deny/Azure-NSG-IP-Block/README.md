# Block IP address in Network Security Groups

This policy would deny the rule creation in Network Security Groups where in the source or the destination address is particular IP ( 0.0.0.0) in this case. Matching all the conditions for the direction of rule, access level and the address prefix, deny effect would be triggered.

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FDeny%2FAzure-NSG-Ipblock%2FAzurePolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "NSG-Ip-Block" -DisplayName "Block Ips in NSG rules" -description "This policy would deny the rule creation in Network Security Groups where in the source or the destination address is particular IP ( 0.0.0.0) in this case. Matching all the conditions for the direction of rule, access level and the address prefix , deny effect would be triggered." -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-NSG-Ipblock/AzurePolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-NSG-Ipblock/AzurePolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'NSG-Ip-Block' --display-name 'Block Ips in NSG rules' --description 'This policy would deny the rule creation in Network Security Groups where in the source or the destination address is particular IP ( 0.0.0.0) in this case. Matching all the conditions for the direction of rule, access level and the address prefix , deny effect would be triggered' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-NSG-Ipblock/AzurePolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Deny/Azure-NSG-Ipblock/AzurePolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "NSG-Ip-Block" 

````