# By Jannic S. Jensen, january 2017

# Variables
$AzureUser = Get-Content c:\private\azureum.txt
$AzurePwd = Get-Content c:\private\azurepm.txt | ConvertTo-SecureString
$AzureSub = Get-Content c:\private\azuresub.txt
$AzureCreds = New-Object System.Management.Automation.PSCredential $AzureUser,$AzurePwd

# To log in to Azure Resource Manager
Add-AzureRMAccount -Credential $AzureCreds

# To select a default subscription for your current session.
# This is useful when you have multiple subscriptions.
Get-AzureRmSubscription -SubscriptionName $AzureSub | Select-AzureRmSubscription
