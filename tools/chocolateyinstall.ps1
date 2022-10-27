
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.13.0/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = 'B8BACFBFDBAA84AA35BE16A7FB0CAC911FA28878CD32C5CB93FC4DE6A3A2650F'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
