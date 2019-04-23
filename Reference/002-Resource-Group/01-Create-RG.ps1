# Az PowerShell 1.7.0

#CREATE RESOURCE GROUP
New-AzResourceGroup `
    -Name "<resource-group-name>"
    -Location "<region-name>"
    -Tag @{key0="value0";key1=$null;key2="value2"}      #Optional
    -Force                                              #Optional        
    -Confirm                                            #Optional

#   Other Paramaters
#   [-ApiVersion <String>]
#   [-Pre]
#   [-WhatIf]
#   [-DefaultProfile <IAzureContextContainer>]
#   [<CommonParameters>]

# ADDITIONAL INFO
# location      --> for example: westus, westus2, eastus, eastus2, westeurope, northeurope ...
# Force         --> Forces the command to run without asking for user confirmation.
# WhatIf        --> Shows what would happen if the cmdlet runs. The cmdlet is not run.
# Confirm       --> Prompts you for confirmation before running the cmdlet.
# < >           --> Don't use '<' and '>' characters. They only indicate that a value must be entered.


# OLDER VERSIONS - Azure PowerShell

# CREATE RESOURCE GROUP
New-AzureRmResourceGroup `
    -Name "<resource-group-name>" `
    -Location "<region-name>"
    -Tag @{key0="value0";key1=$null;key2="value2"}      #Optional
    -Force                                              #Optional        
    -Confirm                                            #Optional

#   Other Paramaters
#   [-ApiVersion <String>]
#   [-Pre]
#   [-WhatIf]
#   [-DefaultProfile <IAzureContextContainer>]
#   [<CommonParameters>]

# ADDITIONAL INFO
# location      --> for example: westus, westus2, eastus, eastus2, westeurope, northeurope ...
# Force         --> Forces the command to run without asking for user confirmation.
# WhatIf        --> Shows what would happen if the cmdlet runs. The cmdlet is not run.
# Confirm       --> Prompts you for confirmation before running the cmdlet.
# < >           --> Don't use '<' and '>' characters. They only indicate that a value must be entered.
