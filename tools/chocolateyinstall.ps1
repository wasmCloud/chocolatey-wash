
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.13.0/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = 'b8bacfbfdbaa84aa35be16a7fb0cac911fa28878cd32c5cb93fc4de6a3a2650f'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
