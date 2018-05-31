function ch { . 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' $args }
function touch { $null >> $args }
function subl { . 'C:\Program Files\Sublime Text 3\subl.exe' $args }
function subll { subl . }
function vs { . "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe" $args }

$env:Path += 'C:\Program Files\CMake\bin\'

. "$PSScriptRoot/browser.ps1"
. "$PSScriptRoot/projects.ps1"

function cdal { cd "C:\Users\$env:username\Documents\WindowsPowerShell" }
function al { cdal; subl Microsoft.PowerShell_profile.ps1 }
function alb { cdal; subl browser.ps1 }
function alp { cdal; subl projects.ps1 }

function cdl { cd "$args"; ls }

function op { ii . }
function res { Start-Process PowerShell; exit }

function build { py .\configuration\build.py }

#git

function gs { git status }
function gp { git push }

function push {
    git add -A
    git commit -m "$args"
    git push
}

#folders

function hm { cd ~/ }
function dev { cd '~/Google Drive/dev' }
function work { cd '~/Google Drive/dev/work' }
function sand { cd '~/Google Drive/dev/sand' }
function pf { cd 'C:\Program Files\'; op }
function pf3 { cd 'C:\Program Files (x86)\'; op }

echo hello $env:username

hm

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
