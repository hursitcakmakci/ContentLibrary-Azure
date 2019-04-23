# Show Account Details and TenantID
Get-AzContext
# Name                                     Account             SubscriptionName    Environment         TenantId
# ----                                     -------             ----------------    -----------         --------
# Subscription1 (xxxxxxxx-xxxx-xxxx-xxx... test@outlook.com    Subscription1       AzureCloud          xxxxxxxx-x...

# Show Subscription List and SubscriptionID's
Get-AzSubscription
# Name                               Id                      TenantId                        State
# ----                               --                      --------                        -----
# Subscription1                      yyyy-yyyy-yyyy-yyyy     aaaa-aaaa-aaaa-aaaa             Enabled
# Subscription2                      xxxx-xxxx-xxxx-xxxx     aaaa-aaaa-aaaa-aaaa             Enabled
# Subscription3                      zzzz-zzzz-zzzz-zzzz     bbbb-bbbb-bbbb-bbbb             Enabled

# Select the membership you want to work on
Set-AzContext -SubscriptionName "<subscription-name>"
# or
Set-AzContext -SubscriptionId "<subscription-id>"

# Set Default Resource Group
Set-AzDefault -ResourceGroupName "<rg-name>"

# Related Reference Links
# https://docs.microsoft.com/en-us/powershell/module/az.accounts/get-azcontext?view=azps-1.7.0
# https://docs.microsoft.com/en-us/powershell/module/az.accounts/get-azsubscription?view=azps-1.7.0
# https://docs.microsoft.com/en-us/powershell/module/az.accounts/set-azcontext?view=azps-1.7.0
# https://docs.microsoft.com/en-us/powershell/module/az.accounts/set-azdefault?view=azps-1.7.0




# OLDER VERSIONS - Azure PowerShell

# Show Account Details and TenantID
Get-AzureRmContext

# Show Membership List, SubscriptionID's
Get-AzureRmSubscription

# Select the membership you want to work on
Set-AzureRmContext -SubscriptionName "<subscription-name>"
#or
Set-AzureRmContext -SubscriptionId "<subscription-id>"

# Set Default Resource Group
Set-AzureRmDefault -ResourceGroupName "<rg-name>"

# Related Reference Link
# https://docs.microsoft.com/en-us/powershell/module/azurerm.profile/get-azurermcontext?view=azurermps-6.13.0
# https://docs.microsoft.com/en-us/powershell/module/azurerm.profile/get-azurermsubscription?view=azurermps-6.13.0
# https://docs.microsoft.com/en-us/powershell/module/azurerm.profile/set-azurermcontext?view=azurermps-6.13.0
# https://docs.microsoft.com/en-us/powershell/module/azurerm.profile/set-azurermdefault?view=azurermps-6.13.0