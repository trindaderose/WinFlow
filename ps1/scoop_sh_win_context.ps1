if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "Instalando o Scoop..."
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    Invoke-RestMethod get.scoop.sh | Invoke-Expression
}

$packages = @(
    'googlechrome',
    'onecommander',
    'easy-context-menu',
    'powertoys',
    'attribute-changer',
    'defraggler',
    'winfetch',
    'space-radar',
    'ccleaner',
    'transmission',
    'lockhunter',
    'spotify',
    'discord',
    'openvpn',
    'openssl',
    'windowsspyblocker',
    'snappy-driver-installer-origin',
    'sidebar-diagnostics'
)

foreach ($package in $packages) {
    Write-Host "Instalando $package..."
    scoop install $package
}

Write-Host "Instalação concluída! ✨"
