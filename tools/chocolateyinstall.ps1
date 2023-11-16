
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.23.0/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '0019DFC4B32D63C1392AA264AED2253C1E0C2FB09216F8E2CC269BBFB8BB49B5'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
