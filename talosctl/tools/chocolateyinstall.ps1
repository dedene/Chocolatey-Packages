$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/siderolabs/talos/releases/download/v1.3.6/talosctl-windows-amd64.exe'
$checksum64 = 'dbefbeb7190e5d3178bf1605dabbcdf4ad7b31ee9975aed212a53080c9b3041b8db21cba415664e1d85321ad27e3ef10b1ae4839621b51aade82805382b862c7'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'talosctl.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
