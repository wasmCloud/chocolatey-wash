
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/wasmCloud/wash/releases/download/v0.8.1/wash.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\wash.exe"
  url64bit      = $url64

  checksum64    = '4030BA9537758F8432C062137615431E8D3705CA61FDAAA2CB4B5F925129A013'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs 
