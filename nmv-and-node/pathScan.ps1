# 1. Rutas a verificar
$targetPaths = @(
    "$env:ProgramFiles\nodejs",
    "${env:ProgramFiles(x86)}\nodejs",
    "$env:APPDATA\npm",
    "$env:APPDATA\npm-cache",
    "$env:LOCALAPPDATA\nvm",
    "$env:APPDATA\nvm",
    "C:\nvm",
    "$env:LOCALAPPDATA\pnpm",
    "$env:APPDATA\pnpm",
    "$env:USERPROFILE\.pnpm-store",
    "$env:USERPROFILE\.npmrc"
)

Write-Host "=== 1. COMPROBACIÓN DE DIRECTORIOS Y ARCHIVOS ===" -ForegroundColor Cyan
foreach ($path in $targetPaths) {
    if (Test-Path $path) {
        Write-Host " [RESIDUO DETECTADO] -> $path" -ForegroundColor Red
    } else {
        Write-Host " [LIMPIO] -> $path" -ForegroundColor Green
    }
}

Write-Host "`n=== 2. COMPROBACIÓN DE VARIABLES DE ENTORNO ===" -ForegroundColor Cyan
$envVars = @("NVM_HOME", "NVM_SYMLINK", "NODE_PATH")
foreach ($var in $envVars) {
    $userVal = [Environment]::GetEnvironmentVariable($var, "User")
    $machineVal = [Environment]::GetEnvironmentVariable($var, "Machine")
    if ($userVal -or $machineVal) {
        Write-Host " [RESIDUO DETECTADO] Variable $var (User: $userVal | System: $machineVal)" -ForegroundColor Red
    } else {
        Write-Host " [LIMPIO] Variable $var" -ForegroundColor Green
    }
}

Write-Host "`n=== 3. COMPROBACIÓN DE EJECUTABLES EN EL PATH ===" -ForegroundColor Cyan
$commands = @("node", "npm", "nvm", "pnpm", "yarn")
foreach ($cmd in $commands) {
    $found = Get-Command $cmd -ErrorAction SilentlyContinue
    if ($found) {
        Write-Host " [EJECUTABLE ENCONTRADO] '$cmd' en: $($found.Source)" -ForegroundColor Red
    } else {
        Write-Host " [LIMPIO] Comando '$cmd' no registrado" -ForegroundColor Green
    }
}
