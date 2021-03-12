# Deploy management lock to Disk

This policy would use DeployIfNotExists effect to deploy a lock whenever a disk is updated/created. 

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FDeployIfNotExists%2FAzure%20Deploy-locks-disks%2FAzurePolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "Deploy management locks to disks" -DisplayName "Deploy management locks to disks" -description "This policy would use DeployIfNotExists effect to deploy a lock whenever a disk is updated/created. " -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20Deploy-locks-disks/AzurePolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20Deploy-locks-disks/AzurePolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'Deploy Event hub under new event hub namespace' --display-name 'Deploy management locks to disks' --description 'This policy would use DeployIfNotExists effect to deploy a lock whenever a disk is updated/created.' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20Deploy-locks-disks/AzurePolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20Deploy-locks-disks/AzurePolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "Deploy Event hub under new event hub namespace" 

````