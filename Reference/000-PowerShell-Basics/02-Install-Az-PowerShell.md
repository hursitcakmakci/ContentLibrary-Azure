## Install Az PowerShell

###### Check installed Azure PowerShell version
```powershell
Get-InstalledModule -Name Az -AllVersions

# Version             Name                           Repository           Description
# -------             ----                           ----------           -----------
# 0.7.0               Az                             PSGallery            Azure Resource Manager Module
# 1.0.0               Az                             PSGallery            Azure Resource Manager Module
```

###### Uninstall the Azure PowerShell AzureRM module

```powershell
#Create a function for remove old modules
function Uninstall-AllModules {
  param(
    [Parameter(Mandatory=$true)]
    [string]$TargetModule,

    [Parameter(Mandatory=$true)]
    [string]$Version,

    [switch]$Force,

    [switch]$WhatIf
  )
  
  $AllModules = @()
  
  'Creating list of dependencies...'
  $target = Find-Module $TargetModule -RequiredVersion $version
  $target.Dependencies | ForEach-Object {
    if ($_.requiredVersion) {
      $AllModules += New-Object -TypeName psobject -Property @{name=$_.name; version=$_.requiredVersion}
    }
    else { # Assume minimum version
      # Minimum version actually reports the installed dependency
      # which is used, not the actual "minimum dependency." Check to
      # see if the requested version was installed as a dependency earlier.
      $candidate = Get-InstalledModule $_.name -RequiredVersion $version
      if ($candidate) {
        $AllModules += New-Object -TypeName psobject -Property @{name=$_.name; version=$version}
      }
      else {
        Write-Warning ("Could not find uninstall candidate for {0}:{1} - module may require manual uninstall" -f $_.name,$version)
      }
    }
  }
  $AllModules += New-Object -TypeName psobject -Property @{name=$TargetModule; version=$Version}

  foreach ($module in $AllModules) {
    Write-Host ('Uninstalling {0} version {1}...' -f $module.name,$module.version)
    try {
      Uninstall-Module -Name $module.name -RequiredVersion $module.version -Force:$Force -ErrorAction Stop -WhatIf:$WhatIf
    } catch {
      Write-Host ("`t" + $_.Exception.Message)
    }
  }
}
```

###### Remove old Azure PowerShel versions with the function we just created.
```PowerShell
Uninstall-AllModules -TargetModule Az -Version 0.7.0 -Force
```
###### Install the Azure PowerShell Az module
```PowerShell
Install-Module -Name Az -AllowClobber
```
###### Update the Azure PowerShell module
###### You can update your Azure PowerShell installation by running Update-Module. 
###### This command does not uninstall older versions.
```PowerShell
Update-Module -Name Az
```
**Reference Links**
- [Uninstall the Azure PowerShell module](https://docs.microsoft.com/en-us/powershell/azure/uninstall-az-ps?view=azps-1.7.0)
- [Install & Update the Azure PowerShell module](https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-1.7.0)
