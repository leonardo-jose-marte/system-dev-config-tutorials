# 1. Eliminación forzada de carpetas y archivos residuales
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

foreach ($path in $targetPaths) {
    if (Test-Path $path) {
        Remove-Item -Path $path -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host " [ELIMINADO] -> $path" -ForegroundColor Yellow
    }
}

# 2. Eliminación de variables de entorno (Usuario y Sistema)
$envVars = @("NVM_HOME", "NVM_SYMLINK", "NODE_PATH")
foreach ($var in $envVars) {
    [Environment]::SetEnvironmentVariable($var, $null, "User")
    [Environment]::SetEnvironmentVariable($var, $null, "Machine")
    Write-Host " [REMOVIDA] Variable de entorno $var" -ForegroundColor Yellow
}

Write-Host "`nLimpieza completada. Cierra esta ventana de PowerShell y abre una nueva." -ForegroundColor Green
