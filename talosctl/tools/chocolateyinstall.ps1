$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/siderolabs/talos/releases/download/v1.4.5/talosctl-windows-amd64.exe'
$checksum64 = 'f58bd796677aabcddbb8e35a810cf1d90f69ab86f4917233bfc3c7bf22dc9be6ecb1636f9ead8e9d96c5dd82b48d8602274e2b1120875a7b0300e0018fb9397b'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'talosctl.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
