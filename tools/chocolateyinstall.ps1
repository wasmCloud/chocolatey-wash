
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.17.3/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '2A7E28D433B3067D0B1FE8CBA9D7B0B969A4360414EE423814CD8B311CC09C61'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
