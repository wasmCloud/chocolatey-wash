
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.19.1/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = 'A2631EA9ED633C26EFDD60A1D83689CB9D303ED8B849584E37AB9B62B9374E4D'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
