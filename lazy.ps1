$message = 'About to run backend here, and frontend in ./frontend'
$prompt = 'Press ENTER to continue (or close this window to stop)'
Write-Host "$message"
Read-Host "$prompt"

$backend = 'npm run start'
Start-Process powershell.exe -ArgumentList "-Command", "& {$backend}"

$frontend = 'cd ./frontend; npm run dev'
Start-Process powershell.exe -ArgumentList "-Command", "& {$frontend}"
