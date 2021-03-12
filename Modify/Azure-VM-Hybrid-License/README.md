# Modify Vrtual Mcahine License Type to Windows_server 

This policy will modfiy License Type of VMs to Windows_server whenever a new VM is created or existing VM is updated.

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FModify%2FAzure-VM-Hybrid-License%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "ModifyAzureVMHybrid" -DisplayName "Modify Azure VM Hybrid" -description "This policy will modify the Licnese type to Hybrid." -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Modify/Azure-VM-Hybrid-License/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Modify/Azure-VM-Hybrid-License/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition -PolicyParameter <Parameters>
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'ModifyAzureVMHybrid' --display-name 'Modify Azure VM Hybrid' --description 'This policy will modify the Licnese type to Hybrid." -Policy' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Modify/Azure-VM-Hybrid-License/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Modify/Azure-VM-Hybrid-License/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "ModifyAzureVMHybrid" --params <Parameters>

````
