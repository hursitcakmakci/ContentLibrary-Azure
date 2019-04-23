# CREATE VNET (Virtual Network)
New-AzVirtualNetwork
    -Name <VN-Name>
    -ResourceGroupName <rg-name>
    -Location <region-name>
    -AddressPrefix <_._._._/_>

# All Parameters
# -Name <String>
# -ResourceGroupName <String>
# -Location <String>
# -AddressPrefix <String[]>
# [-DnsServer <String[]>]
# [-Subnet <PSSubnet[]>]
# [-Tag <Hashtable>]
# [-EnableDdosProtection]
# [-DdosProtectionPlanId <String>]
# [-Force]
# [-AsJob]
# [-DefaultProfile <IAzureContextContainer>]
# [-WhatIf]
# [-Confirm]
# [<CommonParameters>]

# Reference Link
# https://docs.microsoft.com/en-us/powershell/module/az.network/new-azvirtualnetwork?view=azps-1.7.0