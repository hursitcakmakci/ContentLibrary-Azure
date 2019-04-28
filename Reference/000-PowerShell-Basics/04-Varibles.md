## Variables

###### Create Variables
```PowerShell
$RGNameCP = "RG-Contoso-Prod"
$LocationCP = "West Europe"
```

###### Use Variable in a script
```PowerShell
New-AzResourceGroup -Name $RGNameCP -Location  $LocationCP
```

###### Remove a variable
```PowerShell
Remove-Variable RG-Contoso-Prod
```

###### Clear a variable
```PowerShell
$count = 5
Clear-Variable $count
$count
# Now the value of count is empty
```

**Related Link**
- [New Variable](https://docs.microsoft.com/en-us/powershell/module/Microsoft.PowerShell.Utility/New-Variable?view=powershell-6)
- [Get Variable](https://docs.microsoft.com/en-us/powershell/module/Microsoft.PowerShell.Utility/Get-Variable?view=powershell-6)
- [Set Variable](https://docs.microsoft.com/en-us/powershell/module/Microsoft.PowerShell.Utility/Set-Variable?view=powershell-6)
- [Remove Variable](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/remove-variable?view=powershell-6)
- [ClearVariable](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/clear-variable?view=powershell-6)