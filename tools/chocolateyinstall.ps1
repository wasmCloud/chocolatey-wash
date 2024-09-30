
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wasmCloud/releases/download/wash-cli-v0.34.1/wash-x86_64-pc-windows-msvc.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = 'F760237AAEABAC8CFF893EF0BBFF6CCC88F1BE917C91BD7D76B7F75431FC8D25'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
