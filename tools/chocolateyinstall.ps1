
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wasmCloud/releases/download/wash-cli-v0.37.0/wash-x86_64-pc-windows-msvc.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '3FEBCD7FC0D1534BA15AC69E41204C7A0C9AD68E13D1307DC28EA546B9D98DE7'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
