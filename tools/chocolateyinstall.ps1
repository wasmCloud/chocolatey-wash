
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wasmCloud/releases/download/wash-cli-v0.29.1/wash-x86_64-pc-windows-msvc.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '5CCAE9F66751D1D1987B96EDB3C75D6F4EAFAAAC1B5E6E3A8A842B95ADBDE36C'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
