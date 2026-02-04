Set-Alias -Name grep -Value Select-String

$PSStyle.FileInfo.Directory = ""

if (Test-Path "$env:HOMEPATH\.m2\repository\org\projectlombok\lombok") {
	$LOMBOK_PATH = (ls "$env:HOMEPATH\.m2\repository\org\projectlombok\lombok" | Sort-Object Name -Descending)[0]
	$LOMBOK_VERSION = $LOMBOK_PATH[0].Name
	$env:JDTLS_JVM_ARGS = "-javaagent:$LOMBOK_PATH\lombok-$LOMBOK_VERSION.jar"
}

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

function dot {
	cd ~/git/private/dotfiles
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

function which {
    param([string]$command)

    Get-Command $command | Select-Object -ExpandProperty Source
}

cd .
