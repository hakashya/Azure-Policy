##Remove Diagnostic settings with destination as eventHub on the Subscriptions resource
##Fetch all the Subscriptions
$subs=Get-AzSubscription
forEach($var in $subs){
$subId="/subscriptions/"+$var.Id
##Fetch Diagnostic settings properties
$diagsettings=Get-AzDiagnosticSetting -ResourceId $subId
forEach($diag in $diagsettings){
$ruleId=$diag.EventHubAuthorizationRuleId
## Check if the diagnostic setting has a valid eventHub destination
if($ruleId -ne $null){
Write-output "Diagnostic Setting Name: "$diag.Name
Write-output "EventhubId: "$ruleId
Write-output "Status: "
Remove-AzDiagnosticSetting -ResourceId $subId -Name $diag.Name
Write-output "`n"
}
}
}
