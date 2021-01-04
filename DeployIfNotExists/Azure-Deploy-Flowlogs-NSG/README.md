# Deploy flow logs to NetworkSecurityGroup

This Policy would use the DeployIfNotExists effect to trigger the deployment of network flow logs associated to Network security group.

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FDeployIfNotExists%2FAzure%20Deploy-Flowlogs-NSG%2FAzurePolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "Deploy flowlogs to NSG" -DisplayName "Deploy flowlogs to NSG" -description "This Policy would use the DeployIfNotExists effect to trigger the deployment of network flow logs associated to Network security group" -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20Deploy-Flowlogs-NSG/AzurePolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20Deploy-Flowlogs-NSG/AzurePolicy.parameters.json' -Mode Indexed
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'Deploy flowlogs to NSG' --display-name 'Deploy flowlogs to NSG' --description 'This Policy would use the DeployIfNotExists effect to trigger the deployment of network flow logs associated to Network security group' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20Deploy-Flowlogs-NSG/AzurePolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20Deploy-Flowlogs-NSG/AzurePolicy.parameters.json' --mode Indexed

az policy assignment create --name <assignmentname> --scope <scope> --policy "Deploy Event hub under new event hub namespace" 

````