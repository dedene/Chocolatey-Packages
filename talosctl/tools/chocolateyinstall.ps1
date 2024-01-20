$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/siderolabs/talos/releases/download/v1.6.2/talosctl-windows-amd64.exe'
$checksum64 = 'bbaf347a82de174b07a12c618302c1ebe1c471801e627cbca5b91b59f5d7f38194e72dbce60d74437c2111a0c1c51614d2f23ae9494127ad1cb2ace3366cfd55'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'talosctl.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
