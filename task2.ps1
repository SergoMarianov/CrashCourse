$version = choco info dotnetcore -r
if ($version -match -not "dotnetcore*"){
    choco install dotnetcore-sdk -y}
else{
    choco upgrade dotnetcore-sdk -y}
Write-Output "`n|`n|`n|`n|   You have the latest dotnetcore"
$userInput = Read-Host "`nDo you want to uninstall dotnetcore? `n   Y - Yes `n   N - No"
if ($userInput -match "y"){
choco uninstall dotnetcore-sdk -y
Write-Output "`n|`n|`n|`n|   dotnetcore has been successfully  uninstalled"}
else{
Write-Output "`n|`n|`n|`n|   Ne xotite - kak xotite :|"
}