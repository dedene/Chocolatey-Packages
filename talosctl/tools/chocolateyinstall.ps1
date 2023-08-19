$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/siderolabs/talos/releases/download/v1.5.0/talosctl-windows-amd64.exe'
$checksum64 = 'a7cf5f2d03142246a4ae741fd6e126a64c9993f8e93cba11b2d5a5d421c6dfefe2eea79cd19453715ecd5505dcad9a5e7c9a54b80d1d19e5f4afe962e333cf58'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'talosctl.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
