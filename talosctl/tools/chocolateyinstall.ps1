$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/siderolabs/talos/releases/download/v1.5.4/talosctl-windows-amd64.exe'
$checksum64 = '8f3713fabe2f581a7afa568c921fb8df7704af165cd46c9d9bda3747a039098ef1fbbc298201b139701476caf0d2c0cd75aaf52c80edfb2a4fc4ba1612491bed'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'talosctl.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
