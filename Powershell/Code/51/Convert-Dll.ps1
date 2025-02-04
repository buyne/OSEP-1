﻿function Convert-Dll
{
<#
.SYNOPSIS
Nishang script to convert an executable to text file.

.DESCRIPTION
This script converts and an executable to a text file.

.PARAMETER EXE
The path of the executable to be converted.

.PARAMETER FileName
Path of the text file to which executable will be converted.

.EXAMPLE
PS > ExetoText C:\binaries\evil.exe C:\test\evil.txt

.LINK
http://www.exploit-monday.com/2011/09/dropping-executables-with-powershell.html
https://github.com/samratashok/nishang
#>
    [CmdletBinding()] Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [String]
        $DllPath, 
        
        [Parameter(Position = 1, Mandatory = $True)]
        [String]
        $OutputPath
    )
    [byte[]] $hexdump = get-content -encoding byte -path "$DllPath"
    $hexdump -join ',' > $OutputPath
    
}
