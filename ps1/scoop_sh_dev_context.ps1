if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "Instalando o Scoop..."
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    Invoke-RestMethod get.scoop.sh | Invoke-Expression
}

$packages = @(
    'git',
    'nodejs',
    'gitui',
    'lazygit',
    'spicetify',
    'terminal-icons',
    'ndm',
    'glow',
    'kondo',
    'carapace-bin',
    'onefetch',
    'imagemagick',
    'csview',
    'wrangler',
    'firefox-developer',
    'python',
    'rstudio'
)

foreach ($package in $packages) {
    Write-Host "Instalando $package..."
    scoop install $package
}

Write-Host "Instalação concluída! ✨"
