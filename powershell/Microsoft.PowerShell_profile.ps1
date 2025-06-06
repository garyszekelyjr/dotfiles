Set-Alias -Name grep -Value Select-String
Set-Alias -Name whereis -Value Get-Command

function sgit {
    param(
        [string]$command,
        [Parameter(ValueFromRemainingArguments = $true)]
        [string]$args
    )

    switch ($command) {
        "fc" { 
            git branch | Select-String $args | ForEach-Object {
                $branch = $_.ToString().Trim()
                git checkout $branch
            }
        }
        "sc" { 
            git add .
            git commit -m $args
        }
        Default { 
            if ($args -eq "") {
                git $command
            } else {
                git $command $args
            }
        }
    }
}

Remove-Alias -Name cd

function cd {
        param([string]$path)
        
        Set-Location $path
    
        if (Test-Path ".\.venv\Scripts\activate") {
            .\.venv\Scripts\activate
        } else {
            if (Get-Command deactivate -ErrorAction SilentlyContinue) {
                deactivate
            } 
        }
}

cd .
