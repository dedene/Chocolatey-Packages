$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/siderolabs/talos/releases/download/v1.3.7/talosctl-windows-amd64.exe'
$checksum64 = '1b08e4a1e9e03c7fb473a0692b243d873e40f49f8de84d76fd1ba2892dd2e88673cf0bdea6bcf6422bd887e7b70fd99d186dd1edc34b7303574c496c97fe1132'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'talosctl.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
