<#
ClearDesktop Script v.1.0
#>

$date = Get-Date -Format "dd.MM.yyyy"

$path = "C:\Users\katshido\Desktop\"

$files = Get-ChildItem -File -Path $path

if ($files.Count -ne 0)
{
    
    if (!(Test-Path -Path ($path + $date)))
    {
        New-Item -Path $path -Name $date -ItemType Directory
    }
    
    foreach ($file in $files)
    {
        Move-Item -Path ($path + $file.Name) -Destination ($path + $date + "\" + $file.Name)
    }
}