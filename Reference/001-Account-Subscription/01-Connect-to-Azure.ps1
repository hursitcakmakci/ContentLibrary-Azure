# Az PowerShell 1.7.0

# Connect to Azure with an authenticated account for use with Azure Resource Manager cmdlet requests.
Connect-AzAccount

# Connect to an Azure service principal account
$mycredentials = Get-Credential
Connect-AzAccount -Credential $mycredentials -Tenant "<tenant-id>" -ServicePrincipal
# -ServicePrincipal     = Indicates that this account authenticates by providing service principal credentials.



# Related Reference Link
# https://docs.microsoft.com/en-us/powershell/module/az.accounts/connect-azaccount?view=azps-1.7.0





# OLDER VERSIONS - Azure PowerShell

# Connect to Azure with an authenticated account for use with Azure Resource Manager cmdlet requests.
Connect-AzureRmAccount

# Related Reference Link
# https://docs.microsoft.com/en-us/powershell/module/azurerm.profile/connect-azurermaccount?view=azurermps-6.13.0