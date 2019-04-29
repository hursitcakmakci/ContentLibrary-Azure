## Output Format on PowerShell

**Format-Table** : _Formats the output as a table._\
**Format-Custom** : _Uses a customized view to format the output._\
**Format-Hex** : _Displays a file or other input as hexadecimal._\
**Format-List** : _Formats the output as a list of properties in which each property appears on a new line._


###### Change Output View

```powershell
# Get Resource Groups 
Get-AzResourceGroup | Format-Table
```

###### List all Output Format Types

```powershell
# List all output format types
Get-Command -Verb Format | Format-Table
```

| CommandType | Name | Version | Source |
| --- | --- | ---- | --- |
| Function | Format-Volume | 2.0.0.0 | Storage |
| Cmdlet | Format-Custom | 6.1.0.0 | Microsoft.PowerShell.Utility |
| Cmdlet | Format-Hex | 6.1.0.0 | Microsoft.PowerShell.Utility |
| Cmdlet | Format-List | 6.1.0.0 | Microsoft.PowerShell.Utility |
| Cmdlet | Format-SecureBootUEFI | 2.0.0.0 | SecureBoot |
| Cmdlet | Format-Table | 6.1.0.0 | Microsoft.PowerShell.Utility |
| Cmdlet | Format-Wide | 6.1.0.0 | Microsoft.PowerShell.Utility |

**Reference Link**
- [Format-Table](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/format-table?view=powershell-6)
- [Format-Custom](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/format-custom?view=powershell-6)
- [Format-Hex](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/format-hex?view=powershell-6)
- [Format-List](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/format-list?view=powershell-6)
- [Format-Wide](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/format-wide?view=powershell-6)