
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.9.0/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '2B13D03D2FAE38E381425D98B777D29BAA68035B3CB3A7A7494578448EE6FAE8'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
