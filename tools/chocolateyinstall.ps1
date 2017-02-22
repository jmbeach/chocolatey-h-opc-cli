$packageName = 'h-opc-cli'
$url = 'https://github.com/hylasoft-usa/h-opc/releases/download/v0.8.1/h-opc-cli.zip'
$url64 = 'https://github.com/hylasoft-usa/h-opc/releases/download/v0.8.1/h-opc-cli.zip'
$checksum = 'E9DC9A9BEAA57DBA5C188EAA3164896EFA5F9DA067AD4BA6E1D4606409793406'
$checksumType = 'sha256'
$checksum64 = 'E9DC9A9BEAA57DBA5C188EAA3164896EFA5F9DA067AD4BA6E1D4606409793406'
$checksumType64 = 'sha256'
$fileName = 'h-opc-cli.zip'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$zipPath = "$toolsPath\$fileName"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $zipPath -Url $url -Url64bit $url64 -Checksum $checksum -ChecksumType $checksumType -Checksum64 $checksum64 -ChecksumType64 $checksumType64
Get-ChocolateyUnzip -PackageName $packageName -FileFullPath $zipPath -Destination $toolsPath
rm $zipPath -ea 0
