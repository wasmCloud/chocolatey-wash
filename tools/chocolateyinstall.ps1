
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.20.0/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '557C86E29F328CEBD3EC6A13940FBDF20C34C9D2E1DBAB1B1CB8153B9E206D49'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
