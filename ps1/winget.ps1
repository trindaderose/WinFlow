if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "Winget não está instalado. Por favor, instale o Winget primeiro. 🐧"
    exit
}

# you might have some dependencies, be aware.
# fique atento as dependencias.
# put your right scoop app name below and open with pwsh.
# coloque o nome correto do seu pacote scoop abaixo e abra via pwsh. voilà.
# coloque o nome correto do seu pacote scoop abaixo e abra via pwsh. voilà.
# just in case: https://winstall.app/

$packages = @(
    'Microsoft.PowerShell',
    '7zip.7zip',
    'Microsoft.WindowsTerminal',
    'OpenVPNTechnologies.OpenVPN',
    'OpenVPNTechnologies.OpenVPNConnect',
    'Microsoft.VisualStudioCode',
    'Microsoft.WindowsPackageManager',
    'Flow.Launcher',
    'JanDeDobbeleer.OhMyPosh',
    'Fontbase.Fontbase',
    'VideoLAN.VLC'
)

foreach ($package in $packages) {
    Write-Host "Instalando $package..."
    winget install --id $package --silent
}

Write-Host "Instalação concluída! ✨ github: @trindaderose"
