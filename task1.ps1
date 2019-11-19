function getUserProcesses ([String]$userName)
{
Get-WmiObject win32_process |Where-Object{$_.getowner().user -match $userName}| Select-Object -ExpandProperty name
}



Write-Output "Choose your case:"
$userInput = Read-Host " 1 - All users `n 2 - All active sessions `n 3 - Processes runned by user`n"
switch ($userInput) {
1 {
    Get-LocalUser;
  }
2 {
    quser
  }
3 {
    $userName = Read-Host "Please, enter username"
    getUserProcesses($userName)
  }
}