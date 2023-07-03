
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.18.1/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '11B2DF1A84630B794EEF4C8363413BD88AFEDF6F19F25E82B97953179BF621A4'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
