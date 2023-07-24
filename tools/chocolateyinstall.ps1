
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.19.0/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '31DCFDEF7E159FF371A952F23D5C1ABCA70FFB20952F30921CA73DBB235F52F2'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
