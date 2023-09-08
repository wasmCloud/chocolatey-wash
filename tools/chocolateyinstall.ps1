
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.20.2/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '04F61A2ACEC8B9E9F3F3A6E58AC5E42628290D2D51153A68D92F358F144935CC'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
