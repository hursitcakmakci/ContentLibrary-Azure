# Grant permissions to a user for a key vault and modify the permissions
Set-AzKeyVaultAccessPolicy `
    -VaultName 'Contoso03Vault' `
    -UserPrincipalName 'PattiFuller@contoso.com' `
    -PermissionsToKeys create,import,delete,list `
    -PermissionsToSecrets set,delete -PassThru

# Vault Name                       : Contoso03Vault
# Resource Group Name              : myrg
# Location                         : westus
# Resource ID                      : /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx/resourceGroups/myrg/providers
#                                    /Microsoft.KeyVault/vaults/contoso03vault
# Vault URI                        : https://contoso03vault.vault.azure.net/
# Tenant ID                        : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx
# SKU                              : Standard
# Enabled For Deployment?          : True
# Enabled For Template Deployment? : False
# Enabled For Disk Encryption?     : False
# Soft Delete Enabled?             : True
# Access Policies                  :
#                                    Tenant ID                                  : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx
#                                    Object ID                                  : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx
#                                    Application ID                             :
#                                    Display Name                               : User Name (username@microsoft.com)
#                                    Permissions to Keys                        : create, import, delete, list
#                                    Permissions to Secrets                     : set, delete
#                                    Permissions to Certificates                :
#                                    Permissions to (Key Vault Managed) Storage :
# Tags                             :

# Modifies the permissions
Set-AzKeyVaultAccessPolicy `
    -VaultName 'Contoso03Vault' `
    -UserPrincipalName 'PattiFuller@contoso.com' `
    -PermissionsToSecrets set,delete,get `
    -PassThru
    
# Vault Name                       : Contoso03Vault
# Resource Group Name              : myrg
# Location                         : westus
# Resource ID                      : /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx/resourceGroups/myrg/providers
#                                     /Microsoft.KeyVault/vaults/contoso03vault
# Vault URI                        : https://contoso03vault.vault.azure.net/
# Tenant ID                        : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx
# SKU                              : Standard
# Enabled For Deployment?          : True
# Enabled For Template Deployment? : False
# Enabled For Disk Encryption?     : False
# Soft Delete Enabled?             : True
# Access Policies                  :
#                                     Tenant ID                                  : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx
#                                     Object ID                                  : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx
#                                     Application ID                             :
#                                     Display Name                               : User Name (username@microsoft.com)
#                                     Permissions to Keys                        : create, import, delete, list
#                                     Permissions to Secrets                     : set, delete, get
#                                     Permissions to Certificates                :
#                                     Permissions to (Key Vault Managed) Storage :
# Tags                             :

# Remove all permissions to key operations.
Set-AzKeyVaultAccessPolicy -VaultName 'Contoso03Vault' `
    -UserPrincipalName 'PattiFuller@contoso.com' `
    -PermissionsToKeys @() -PassThru

# Vault Name                       : Contoso03Vault
# Resource Group Name              : myrg
# Location                         : westus
# Resource ID                      : /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx/resourceGroups/myrg/providers
#                                     /Microsoft.KeyVault/vaults/contoso03vault
# Vault URI                        : https://contoso03vault.vault.azure.net/
# Tenant ID                        : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx
# SKU                              : Standard
# Enabled For Deployment?          : True
# Enabled For Template Deployment? : False
# Enabled For Disk Encryption?     : False
# Soft Delete Enabled?             : True
# Access Policies                  :
#                                     Tenant ID                                  : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx
#                                     Object ID                                  : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx
#                                     Application ID                             :
#                                     Display Name                               : User Name (username@microsoft.com)
#                                     Permissions to Keys                        :
#                                     Permissions to Secrets                     : set, delete, get
#                                     Permissions to Certificates                :
#                                     Permissions to (Key Vault Managed) Storage :
# Tags                             :


# Related Link
# https://docs.microsoft.com/en-us/powershell/module/az.keyvault/set-azkeyvaultaccesspolicy?view=azps-1.7.0