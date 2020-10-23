# VARIABLES
$PSDefaultParameterValues['*:Encoding'] = "utf8"
[Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
$env:EDITOR = 'code --wait'

# IMPORTS
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
Import-Module "$($(Get-Item $(Get-Command scoop).Path).Directory.Parent.FullName)\modules\scoop-completion"
Import-Module npm-completion

# COMMANDS

# Searches command/app
function which($name) {
    Get-Command $name -ErrorAction SilentlyContinue | Select-Object Definition
}

#ALIASES

${function:~} = { Set-Location ~ }
${function:Set-ParentLocation} = { Set-Location .. }; New-Alias ".." Set-ParentLocation -option AllScope
${function:...} = { Set-Location ..\.. }
${function:dt} = { Set-Location ~\Desktop }
${function:docs} = { Set-Location ~\Documents }
${function:dl} = { Set-Location F:\Downloads }
${function:store} = { Start-Process ms-windows-store: }
${function:settings} = { Start-Process ms-settings: }
${function:e.} = { explorer . }

function Edit {
	& "code" -g @args
}

function Edit-Profile {
    edit $profile
}
