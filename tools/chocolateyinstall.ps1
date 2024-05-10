
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wasmCloud/releases/download/wash-cli-v0.28.1/wash-x86_64-pc-windows-msvc.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = 'CC6FFC09AC07BB734C8E23880556C603B8D51CFEDECDA92948DD6AC03CE92011'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
