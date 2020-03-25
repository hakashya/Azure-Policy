# Encrypt Disks of Linux ARM Virtual Machines on Azure

This policy will deploy an ARM template for encrypting disks of Azure Linux Virtual Machines, for all disks. The policy checks whether the disk is encrypted and if it is a Linux VM. Based on the result of the policy condition, using the "deployIfNotExists" effect, it deploys a Disk Encryption ARM template.

## Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhakashya%2FAzure-Policy%2Fmaster%2FCollections%2FAzure-Linux-Disk-Encryption%2Fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "LinuxDiskEncryption" -DisplayName "Encrypt Disks of Linux VMs" -description "This policy will deploy an ARM template for encrypting disks of Azure Linux Virtual Machines, for all disks. The policy checks whether the disk is encrypted and if it is a Linux VM. Based on the result of the policy condition, using the deployIfNotExists effect, it deploys a Disk Encryption ARM template." -Policy 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Linux-Disk-Encryption/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Linux-Disk-Encryption/azurepolicy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment 
````

## Try with CLI

````cli

az policy definition create --name 'LinuxDiskEncryption' --display-name 'Encrypt Disks of Linux VMs' --description 'This policy will deploy an ARM template for encrypting disks of Azure Linux Virtual Machines, for all disks. The policy checks whether the disk is encrypted and if it is a Linux VM. Based on the result of the policy condition, using the deployIfNotExists effect, it deploys a Disk Encryption ARM template.' --rules 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Linux-Disk-Encryption/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/hakashya/Azure-Policy/master/Collections/Azure-Linux-Disk-Encryption/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "audit-classic-VM" 

````