
Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'

function Remove-DanglingContainers {
	docker rmi -f $(docker images -f "dangling=true" -q)
}

function Invoke-ClearGitBranch { 
	clear
	git branch
}

function Invoke-GitLogOneline {
	git log --oneline
}

Set-Alias dang Remove-DanglingContainers

Set-Alias c Invoke-ClearGitBranch

Set-Alias ol Invoke-GitLogOneline
