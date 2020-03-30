# Encrypt Disks of Windows ARM Virtual Machines on Azure

This policy will deploy an ARM template for encrypting disks of Azure Windows Virtual Machines, for all disks. The policy checks whether the disk is encrypted and if it is a Windows VM. Based on the result of the policy condition, using the "deployIfNotExists" effect, it deploys a Disk Encryption ARM template.

The prerequisite for this policy to work is that the Key Vault Access Policies must be set up - It should allow Disk Encryption, the managed identity created by this policy must be given sufficient permissions. In a rare case, the Compute Resource Provider Enterprise Application might need Contributor rights over the subscription.

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FCollections%2FAzure-Windows-Disk-Encryption%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "WindowsADE" -DisplayName "Encrypt Disks of Windows VMs" -description "This policy will deploy an ARM template for encrypting disks of Azure Windows Virtual Machines, for all disks. The policy checks whether the disk is encrypted and if it is a Windows VM. Based on the result of the policy condition, using the "deployIfNotExists" effect, it deploys a Disk Encryption ARM template.

The prerequisite for this policy to work is that the Key Vault Access Policies must be set up - It should allow Disk Encryption, the managed identity created by this policy must be given sufficient permissions. In a rare case, the Compute Resource Provider Enterprise Application might need Contributor rights over the subscription." -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Windows-Disk-Encryption/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Windows-Disk-Encryption/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition -PolicyParameter <parameters> -AssignIdentity
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'WindowsADE' --display-name 'Encrypt Disks of Windows VMs' --description 'This policy will deploy an ARM template for encrypting disks of Azure Windows Virtual Machines, for all disks. The policy checks whether the disk is encrypted and if it is a Windows VM. Based on the result of the policy condition, using the "deployIfNotExists" effect, it deploys a Disk Encryption ARM template.

The prerequisite for this policy to work is that the Key Vault Access Policies must be set up - It should allow Disk Encryption, the managed identity created by this policy must be given sufficient permissions. In a rare case, the Compute Resource Provider Enterprise Application might need Contributor rights over the subscription.' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Windows-Disk-Encryption/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Windows-Disk-Encryption/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "LinuxDiskEncryption" --params <parameters> 

````