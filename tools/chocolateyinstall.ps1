
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.20.1/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '3D9C358BEDC180B5E920B66573B209D5DD2F58011C2FFA3B86B2DBCA9C16BAEF'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
