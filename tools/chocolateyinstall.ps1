
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.15.1/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '3D7A6D1893FE50B3D6EEEB0D011E7637D6E62582D0AD75457DAC3CBA05229BE3'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
