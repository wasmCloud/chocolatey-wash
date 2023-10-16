
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.21.1/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = 'D025B07B03DC059943B70B6D1B3FB2198ADCF256A682A12641C9D7EA0B9A65EB'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
