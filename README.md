# 自用Windows配置

## Microsoft.PowerShell_profile.ps1

powershell配置

1. 安装winget
2. 安装powershell 7
3. 安装scoop
   $env:SCOOP='路径'
   [Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
   iwr -useb get.scoop.sh | iex
4. 安装pwsh模块
   Install-Module PSReadLine -Scope CurrentUser
   Install-Module Terminal-Icons -Scope CurrentUser
5. 复制配置文件，并下载剩余软件包
