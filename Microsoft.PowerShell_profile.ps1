# Theme
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/night-owl.omp.json" | Invoke-Expression

# Alias
New-Alias -Name b -Value "busybox" 
New-Alias -Name python -Value "ipython" 

# Show file icons
Import-Module -Name Terminal-Icons

# Auto suggestions
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

# Zlocation
Import-Module ZLocation

# Emacs mode
Set-PSReadLineOption -EditMode Emacs

# Move by words
Set-PSReadlineKeyHandler -Key Ctrl+LeftArrow -Function BackwardWord
Set-PSReadlineKeyHandler -Key Ctrl+RightArrow -Function NextWord

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# # Autocompletion for arrow keys
# Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Key UpArrow -ScriptBlock {
	[Microsoft.PowerShell.PSConsoleReadLine]::HistorySearchBackward()
	[Microsoft.PowerShell.PSConsoleReadLine]::EndOfLine()
}
Set-PSReadLineKeyHandler -Key DownArrow -ScriptBlock {
	[Microsoft.PowerShell.PSConsoleReadLine]::HistorySearchForward()
	[Microsoft.PowerShell.PSConsoleReadLine]::EndOfLine()
}

