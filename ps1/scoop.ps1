if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "Instalando o Scoop..."
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    Invoke-RestMethod get.scoop.sh | Invoke-Expression
}

# you might have some dependencies, be aware.
# fique atento as dependencias.
# put your right scoop app name below and open with pwsh.
# coloque o nome correto do seu pacote scoop abaixo e abra via pwsh. voilà.
# coloque o nome correto do seu pacote scoop abaixo e abra via pwsh. voilà.
# just in case: https://scoop.sh/

$packages = @(
    '7zip',
    'attribute-changer',
    'carapace-bin',
    'ccleaner',
    'csview',
    'curl',
    'dark',
    'defraggler',
    'easy-context-menu',
    'gcc',
    'ghostscript',
    'git',
    'gitui',
    'glow',
    'googlechrome',
    'imagemagick',
    'innounp',
    'jq',
    'kondo',
    'lazygit',
    'lockhunter',
    'moneymanagerex',
    'monolith',
    'ndm',
    'nodejs',
    'oh-my-posh',
    'onecommander',
    'onefetch',
    'openssl',
    'openvpn',
    'pdftk-builder',
    'powertoys',
    'PSReadLine',
    'python',
    'r',
    'rstudio',
    'sampler',
    'scoop-search',
    'sidebar-diagnostics',
    'snappy-driver-installer-origin',
    'sonic-pi',
    'space-radar',
    'spicetify-cli',
    'spotify',
    'sudo',
    'terminal-icons',
    'transmission',
    'windowsspyblocker',
    'winfetch',
    'wrangler'
)

foreach ($package in $packages) {
    Write-Host "Instalando $package..."
    scoop install $package
}

Write-Host "Instalação concluída! ✨ github: @trindaderose"
