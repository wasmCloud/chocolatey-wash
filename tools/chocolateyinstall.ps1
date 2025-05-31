
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wasmCloud/releases/download/wash-v0.42.0/wash-x86_64-pc-windows-msvc.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '2E95AC1C7BD309C3A29B63ADEF59918A90AB90BAFC26F80117F900112A39A29F'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
