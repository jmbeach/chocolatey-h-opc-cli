$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$fileName = 'h-opc-cli.zip'
$packageArgs = @{
	packageName			= 'h-opc-cli'
	url							= 'https://github.com/hylasoft-usa/h-opc/releases/download/v0.9.0/h-opc-cli.0.9.0.zip'
	unzipLocation		= $toolsPath
	checksum				= '9983975FB120B9A1F136CB56F7CE8A36D7D5FCF50E7F841062AFFF3CF820A007'
	checksumType		= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
