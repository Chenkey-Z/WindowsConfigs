# UTF8
$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Theme
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/night-owl.omp.json" | Invoke-Expression

# Alias
New-Alias -Name b -Value "busybox" 
New-Alias -Name python -Value "ipython" 
New-Alias -Name top -Value "btop" 

# Show file icons
Import-Module -Name Terminal-Icons

# Auto suggestions
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

# Emacs mode
Set-PSReadLineOption -EditMode Emacs

# Move by words
Set-PSReadlineKeyHandler -Key Ctrl+LeftArrow -Function BackwardWord
Set-PSReadlineKeyHandler -Key Ctrl+RightArrow -Function NextWord

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# # Autocompletion for arrow keys
Set-PSReadLineKeyHandler -Key UpArrow -ScriptBlock {
	[Microsoft.PowerShell.PSConsoleReadLine]::HistorySearchBackward()
	[Microsoft.PowerShell.PSConsoleReadLine]::EndOfLine()
}
Set-PSReadLineKeyHandler -Key DownArrow -ScriptBlock {
	[Microsoft.PowerShell.PSConsoleReadLine]::HistorySearchForward()
	[Microsoft.PowerShell.PSConsoleReadLine]::EndOfLine()
}

# Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })
Set-Alias -Name z -Value __zoxide_z -Option AllScope -Scope Global -Force
Set-Alias -Name zi -Value __zoxide_zi -Option AllScope -Scope Global -Force
