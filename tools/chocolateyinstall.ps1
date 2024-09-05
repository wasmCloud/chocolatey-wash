
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wasmCloud/releases/download/wash-cli-v0.32.1/wash-x86_64-pc-windows-msvc.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '3FE3BADEB52D96AD002A20892D1CB83C9D1885713CF31249EF781A310F97568D'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
