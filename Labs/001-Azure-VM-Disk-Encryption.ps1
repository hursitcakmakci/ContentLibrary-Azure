
# Assigning values to variables
$KVRGname = (Get-AzResourceGroup -ResourceGroupName RG-HCLab-General).ResourceGroupName   #RG-Contoso-General
$VMRGname = (Get-AzResourceGroup -ResourceGroupName RG-HCLab-Dev).ResourceGroupName          #RG-Contoso-Prod
$KVLocation = "westeurope"
$vmName = "MySecureVM"             
$KVName = "MySecureVault001"     # The value is must be unique

# Register the "Microsoft.KeyVault" provider for your account
Register-AzResourceProvider -ProviderNamespace "Microsoft.KeyVault"

# Create KeyVault
New-AzKeyVault -Location $KVLocation `
    -ResourceGroupName $KVRGname `
    -VaultName $KVName `
    -EnabledForDiskEncryption

# Create KeyVault Access Policy for Admin Permissions
Set-AzKeyVaultAccessPolicy -VaultName $KVName `
    -UserPrincipalName "user.name@contoso.com" `
    -PermissionsToKeys create,import,delete,list `
    -PermissionsToSecrets set,delete `
    -PassThru

# Create KeyVault Key
Add-AzKeyVaultKey -VaultName $KVName `
    -Name "ADE-Key" ` ##AzureDiskEncryption
    -Destination "Software"  ## HSM or Software

# Assigning value to variable
$appName = "ADE-App"
# Convert string to secure string and assign to variable
$securePassword = ConvertTo-SecureString -String "testpass123" -AsPlainText -Force

# Create AD Application and assign to variable
$app = New-AzADApplication -DisplayName $appName `
    -HomePage "https://ade.contoso.local" `
    -IdentifierUris "https://ade.contoso.local/ade" `
    -Password $securePassword

# Create AD Service Principal
New-AzADServicePrincipal -ApplicationId $app.ApplicationId

# Set KeyVault Access Policy for Disk Encryption Proccess
Set-AzKeyVaultAccessPolicy -VaultName $KVName `
    -ServicePrincipalName $app.ApplicationId `
    -PermissionsToKeys "WrapKey" `
    -PermissionsToSecrets "Set"

# Get the created KeyVault and assign to variable
$keyVault = Get-AzKeyVault -VaultName $KVName -ResourceGroupName $KVRGname

# Assigning values to variables
$diskEncryptionKeyVaultUrl = $keyVault.VaultUri;
$keyVaultResourceId = $keyVault.ResourceId;
$keyEncryptionKeyUrl = (Get-AzKeyVaultKey -VaultName $KVName -Name "ADE-Key").Key.Kid

# Enables encryption on selected VM's disks
Set-AzVMDiskEncryptionExtension -ResourceGroupName $VMRGname `
    -VMName $vmName `
    -AadClientID $app.ApplicationId `
    -AadClientSecret (New-Object PSCredential "user.name@contoso.com", $securePassword).GetNetworkCredential().Password `
    -DiskEncryptionKeyVaultUrl $diskEncryptionKeyVaultUrl `
    -DiskEncryptionKeyVaultId $keyVaultResourceId `
    -KeyEncryptionKeyUrl $keyEncryptionKeyUrl `
    -KeyEncryptionKeyVaultId $keyVaultResourceId

# Get VM Disk Encryption Status
Get-AzVmDiskEncryptionStatus  -ResourceGroupName $KVRGname -VMName $vmName

# Disables encryption on selected VM's disks
Disable-AzVMDiskEncryption -ResourceGroupName $VMRGname -VMName $vmName

# Related Link
# https://docs.microsoft.com/en-us/azure/security/azure-security-disk-encryption-windows
# https://docs.microsoft.com/en-us/powershell/module/az.keyvault/set-azkeyvaultaccesspolicy?view=azps-1.7.0