
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.17.1/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '8B2A883FE205FB6B6D43ECE54A62FA3286BC84DFE43DF04E606CEACF1614B885'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
