
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.17.2/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '71F59137B114698628FD1DB0848B43650A373814EB3F5902ABDD5227C1C5360B'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
