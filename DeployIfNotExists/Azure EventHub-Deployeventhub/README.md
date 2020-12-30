# Deploy an event hub whenever a blank event hub namespace is created

This Policy would use the DeployIfNotExists effect to trigger the deployment of an event hub under a newly created namespace. If the existing namespaces already have an event hub, no deployments would be made under those namespaces.

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FDeployIfNotExists%2FAzure%20EventHub-Deployeventhub%2FAzurePolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "Deploy Event hub under new event hub namespace" -DisplayName "Deploys a child event hub under blank event hub namespace" -description "This Policy would use the DeployIfNotExists effect to trigger the deployment of an event hub under a newly created namespace. If the existing namespaces already have an event hub, no deployments would be made under those namespaces." -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20EventHub-Deployeventhub/AzurePolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20EventHub-Deployeventhub/AzurePolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'Deploy Event hub under new event hub namespace' --display-name 'Deploys a child event hub under blank event hub namespace' --description 'This Policy would use the DeployIfNotExists effect to trigger the deployment of an event hub under a newly created namespace. If the existing namespaces already have an event hub, no deployments would be made under those namespaces.' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20EventHub-Deployeventhub/AzurePolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/DeployIfNotExists/Azure%20EventHub-Deployeventhub/AzurePolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "Deploy Event hub under new event hub namespace" 

````