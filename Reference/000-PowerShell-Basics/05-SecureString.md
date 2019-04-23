## Secure String

###### Secure string examples

```PowerShell
#Create a secure string from a file
$secpass = Get-Content d:\azure\securepass.txt | ConvertTo-SecureString -AsPlainText -Force

#Create a secure string from the console
$secpass = Read-Host "Please enter a password" -AsSecureString

#Create a secure string from a standart string
$plaintext = "Plain-Text"
$secpass = ConvertTo-SecureString $plaintext -AsPlainText -Force
```

###### Convert a secure string to an encrypted standard string
```PowerShell
$encrypted = ConvertFrom-SecureString -SecureString $secpass
```

###### Convert a secure string to an encrypted standard string with 192-bit Key
```PowerShell
$Key = (3,4,2,3,56,34,254,222,1,1,2,23,42,54,33,233,1,34,2,7,6,5,35,43)
$encrypted = ConvertFrom-SecureString -SecureString $secpass -Key $Key

# 192-bit Key = The key is an array of 24 digits.
#               Each digit represents a byte (8 bits) and all of which are less than 256 (0-255)
#               The key has 24 digits for a total of 192 bits (8 x 24).
#               This is a valid key length for the AES algorithm.
```

**Related Links**
- [Convert to Secure String](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/convertto-securestring?view=powershell-6)
- [Convert from Secure String](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/convertfrom-securestring?view=powershell-6)