Set-Location $PSScriptRoot

$smartgitDir = Join-Path $env:APPDATA syntevo\SmartGit\20.1
$backupPath = Join-Path $smartgitDir ".configBackup"

New-Item -Path $backupPath -ItemType Directory -Force
Copy-Item -Path (Join-Path $smartgitDir .\tools.yml) -Destination $backupPath
Copy-Item -Path (Join-Path $smartgitDir .\ui-config.yml) -Destination $backupPath

Copy-Item -Path "tools.yml" -Destination $smartgitDir
Copy-Item -Path "ui-config.yml" -Destination $smartgitDir
