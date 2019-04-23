Set-AzVirtualNetwork
   -VirtualNetwork <PSVirtualNetwork>
   [-AsJob]
   [-DefaultProfile <IAzureContextContainer>]
   [<CommonParameters>]

# All Parameters
# -VirtualNetwork <PSVirtualNetwork>
# [-AsJob]
# [-DefaultProfile <IAzureContextContainer>]
# [<CommonParameters>]

# EXAMPLE
# Creates a virtual network and removes one of its subnets

# This example creates a virtual network called TestResourceGroup with two subnets: frontendSubnet and backendSubnet. 
# Then it removes backendSubnet subnet from the in-memory representation of the virtual network. 
# The Set-AzVirtualNetwork cmdlet is then used to write the modified virtual network state on the service side. 
# When the Set-AzVirtualNetwork cmdlet is executed, the backendSubnet is removed.

    ## Create resource group
    New-AzResourceGroup -Name TestResourceGroup -Location centralus 
    ## Create Frontend subnet - Variables
    $frontendSubnet = New-AzVirtualNetworkSubnetConfig -Name frontendSubnet -AddressPrefix "10.0.1.0/24"
    ## Create Backend subnet - Variables
    $backendSubnet = New-AzVirtualNetworkSubnetConfig -Name backendSubnet -AddressPrefix "10.0.2.0/24" 
    ## Create virtual network - Variables
    $virtualNetwork = New-AzVirtualNetwork 
        -Name MyVirtualNetwork 
        -ResourceGroupName TestResourceGroup 
        -Location centralus 
        -AddressPrefix "10.0.0.0/16" 
        -Subnet $frontendSubnet,$backendSubnet 
    ## Remove subnet from in memory representation of virtual network
    Remove-AzVirtualNetworkSubnetConfig -Name backendSubnet -VirtualNetwork $virtualNetwork
    ## Remove subnet from virtual network
    $virtualNetwork | Set-AzVirtualNetwork