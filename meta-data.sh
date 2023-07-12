Get-AzSubscription
Set-AzContext -Subscription "SubscriptionName"
Get-AzVm -ResourceGroupName Resource-group-name-001 -Name "Virtual-Machine-Name-001" --output json --status
