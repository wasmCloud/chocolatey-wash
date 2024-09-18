
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wasmCloud/releases/download/wash-cli-v0.33.0/wash-x86_64-pc-windows-msvc.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = 'B9F85B3C61D7C38BB0FDE8905FC95EDD1C91370C08DC3CFBE858E78DA3D0A576'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
