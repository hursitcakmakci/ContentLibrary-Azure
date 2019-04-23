# Az PowerShell 1.7.0

# DELETE RESOURCE GROUP
Remove-AzRmResourceGroup `
    -Name "resource-group-name"     # or -ID "resource-group-id"
    -Force                          # Optional
    -AsJob                          # Optional
    -Confirm                        # Optional

# Other Paramaters
#     [-ApiVersion <String>]
#     [-Pre]
#     [-DefaultProfile <IAzureContextContainer>]
#     [-WhatIf]
#     [-Confirm]
#     [<CommonParameters>]

# Additional Info
# ID            --> Specifies the ID of resource group to remove. Wildcard characters are not permitted.
# Force         --> Forces the command to run without asking for user confirmation.
# AsJob         --> Run cmdlet in the background
# Confirm       --> Prompts you for confirmation before running the cmdlet.
# WhatIf        --> Shows what would happen if the cmdlet runs. The cmdlet is not run.




# OLDER VERSIONS - Azure PowerShell

# DELETE RESOURCE GROUP
Remove-AzureRmResourceGroup `
    -Name "resource-group-name"     # or -ID "resource-group-id"
    -Force                          # Optional
    -AsJob                          # Optional
    -Confirm                        # Optional

# Other Paramaters
#     [-ApiVersion <String>]
#     [-Pre]
#     [-DefaultProfile <IAzureContextContainer>]
#     [-WhatIf]
#     [-Confirm]
#     [<CommonParameters>]

# Additional Info
# ID            --> Specifies the ID of resource group to remove. Wildcard characters are not permitted.
# Force         --> Forces the command to run without asking for user confirmation.
# AsJob         --> Run cmdlet in the background
# Confirm       --> Prompts you for confirmation before running the cmdlet.
# WhatIf        --> Shows what would happen if the cmdlet runs. The cmdlet is not run.