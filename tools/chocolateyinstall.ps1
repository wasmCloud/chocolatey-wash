
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.14.0/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '6FDDDD784A50CC74BEA6C5F9231EAE9213F512ACB01F9BE279FF72A5BF288BEB'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
