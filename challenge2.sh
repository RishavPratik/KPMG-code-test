We need to write code that will query the meta data of an instance within AWS or Azure or GCP and provide a json formatted output. The choice of language and implementation is up to you.

az account set --subscription SubscriptionName
az vm get-instance-view --resource-group Resource-group-Name-001 -name "Virtual-Machine-Name-001" --output json
