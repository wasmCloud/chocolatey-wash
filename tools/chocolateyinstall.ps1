
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wasmCloud/releases/download/wash-cli-v0.25.0/wash-x86_64-pc-windows-msvc.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = 'FCBD0F7A6B1969508AC76546CD04E3F06D48F6C191644D3B0C9BA964EC93CDB0'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
