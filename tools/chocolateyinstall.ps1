
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wasmCloud/releases/download/wash-cli-v0.32.0/wash-x86_64-pc-windows-msvc.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = 'C8F7AD404129CEE33AC379CA1238FE49A062D04A8C9C8BB7D2E175A03208D4C6'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
