##Fetch Compliance State for all Policy assignments
$allpolicy=Get-AzPolicyAssignment
forEach($policyassignment in $allpolicy){
$policy=Get-AzPolicyState -PolicyAssignmentName $policyassignment.Name
forEach($var in $policy){
Write-Host "ResourceId: " $var.ResourceId
Write-Host "ComplianceState: " $var.ComplianceState
Write-Host "SubscriptionId: " $var.SubscriptionId
Write-Host "PolicyAssignmentId: " $var.PolicyAssignmentId
Write-Host "PolicyDefinitionId: " $var.PolicyDefinitionId
Write-Host "`n"
}
}
