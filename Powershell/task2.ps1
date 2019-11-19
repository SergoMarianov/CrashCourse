function addScheduledTask 
{
$Trigger= New-ScheduledTaskTrigger -At 6:00am -Daily
$User= "NT AUTHORITY\SYSTEM"
$Action= New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "C:\Users\Sergo\Documents\CrashCourse\Powershell\upd_dotnetcore.ps1"
Register-ScheduledTask -TaskName "upd_dotnetcore" -Trigger $Trigger -User $User -Action $Action -RunLevel Highest –Force
}

choco upgrade dotnetcore-sdk -y
addScheduledTask
Write-Output "`n|`n|`n|`n|   You have the latest dotnetcore"

$userInput = Read-Host "`nDo you want to uninstall dotnetcore? `n   Y - Yes `n   N - No"
if ($userInput -match "y")
{
    Unregister-ScheduledTask -TaskName "upd_dotnetcore" -Confirm:$false
    choco uninstall dotnetcore-sdk -y
    Write-Output "`n|`n|`n|`n|   dotnetcore has been successfully  uninstalled"}
else
{
    Write-Output "`n|`n|`n|`n|   Ne xotite - kak xotite :|"
}