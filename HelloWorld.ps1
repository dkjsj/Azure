# By Jannic S. Jensen

# Variables
$AzureUser = Get-Content c:\private\azureum.txt
$AzurePwd = Get-Content c:\private\azurepm.txt | ConvertTo-SecureString
$AzureSub = Get-Content c:\private\azuresub.txt
$Azurecreds = New-Object System.Management.Automation.PSCredential $AzureUser,$AzurePwd

# To log in to Azure Resource Manager
Add-AzureRMAccount -Credential $Azurecreds

# To view all subscriptions for your account
Get-AzureRmSubscription

# To select a default subscription for your current session.
# This is useful when you have multiple subscriptions.
Get-AzureRmSubscription -SubscriptionName $AzureSub | Select-AzureRmSubscription

#Get list of all resource groups, location, and provisioning state
Get-AzureRmResourceGroup | Select-Object ResourceGroupName, Location, ProvisioningState
