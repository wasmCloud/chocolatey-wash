
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.15.0/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = 'AB2BDB8BC846A18B470F279D79A445EE482CE9E329A34423BFD5F3F14407FE6E'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
