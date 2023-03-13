
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.16.1/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '944D58473B48946D1983F8778954AF38C2840AD9B855AE54DA0B527A90237FC0'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
