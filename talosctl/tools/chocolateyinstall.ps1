$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/siderolabs/talos/releases/download/v1.4.0/talosctl-windows-amd64.exe'
$checksum64 = 'fe71eb9f32f3fbab515b71d2d10c36e4b6246e2100bcf639b66b2df5629167549d5ab3ff68ff57d2990dfc16d5f9fce6a233f525582291f4fa08bf90a671d1e5'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'talosctl.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
