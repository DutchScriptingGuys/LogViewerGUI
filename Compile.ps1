#Requires -Version 5.1
#Requires -Modules ps2exe

$ParamSet = @{
    inputFile   = (Join-Path -Path $PWD -ChildPath 'Create-LogReaderGUI.ps1')
    outputFile  = (Join-Path -Path $PWD -ChildPath 'LogViewer.exe')
    noConsole   = $true
    iconFile    = (Join-Path -Path $PWD -ChildPath 'dsg.ico')
    title       = "Log Viewer"
    description = "Log Viewer GUI for selecting and opening log files based on file type and modification time."
    company     = "Dutch Scripting Guys"
    copyright   = "Jos Fissering - github@dutchscriptingguys.com | (c) 2025 All rights reserved."
    version     = [version](Get-Date -Format 'yyyy.MM.dd.HHmm')
    product     = "Log Viewer"
}

Invoke-ps2exe @ParamSet
