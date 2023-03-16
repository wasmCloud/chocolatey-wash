
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.16.2/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '14151F20B18D441C050405245FB8E52724BEF13FD3CB1BDE9860DBB545BAD3A9'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
