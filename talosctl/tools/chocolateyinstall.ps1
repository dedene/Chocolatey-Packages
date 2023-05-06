$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/siderolabs/talos/releases/download/v1.4.1/talosctl-windows-amd64.exe'
$checksum64 = 'f35b0109380173e5171561f5e5b855728a8f7b1966db07dcfa02c4762035142e9e7554aa8f9759ac236b7770d50d106d0eaaf63052eb6bd6b8d16be19189c817'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'talosctl.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
