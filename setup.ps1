$targetBuckets = @('extras', 'nerd-fonts')
$installedBuckets = $(scoop bucket list)

if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
	Write-Host "Installing scoop"
	Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
	Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

foreach ($b in $targetBuckets) {
	if (!$installedBuckets -contains $b.Name) {
		Write-Host "Adding scoop bucket $b.Name"
		scoop bucket add $b.Name
	}
}

scoop install vim neovim curl wget go lazygit ripgrep fd jq zig cmake luarocks lua unzip gzip stylua curlie rust nvm rustup
go install github.com/docker/docker-language-server/cmd/docker-language-server@latest

