if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "Instalando o Scoop..."
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    Invoke-RestMethod get.scoop.sh | Invoke-Expression
}

$packages = @(
    'pwsh',
    '7zip',
    'winget',
    'openvpn',
    'openvpn-connect',
    'vscode',
    'winget',
    'flow-launcher',
    'oh-my-posh',
    'fontbase',
    'vlc',
)

foreach ($package in $packages) {
    Write-Host "Instalando $package..."
    scoop install $package
}

Write-Host "Instalação concluída! ✨"
