
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.8.1/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '4030ba9537758f8432c062137615431e8d3705ca61fdaaa2cb4b5f925129a013'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
