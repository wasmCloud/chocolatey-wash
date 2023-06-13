
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.18.0/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '49269FF013E2F3667513836F9DF2AD282F13FE235E13FC44586E7F974DB86C95'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
