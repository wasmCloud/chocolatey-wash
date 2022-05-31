
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.11.0/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '06EAB3A26D24CB7AC68A428F7CA43334D85B4597446F26BCB70E032311BEDCD1'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
