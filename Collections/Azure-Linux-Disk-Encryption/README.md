#Encrypt Disks of Linux ARM Virtual Machines on Azure

This policy will deploy an ARM template for encrypting disks of Azure Linux Virtual Machines, for all disks. The policy checks whether the disk is encrypted and if it is a Linux VM. Based on the result of the policy condition, using the "deployIfNotExists" effect, it deploys a Disk Encryption ARM template.

##Try it on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/)