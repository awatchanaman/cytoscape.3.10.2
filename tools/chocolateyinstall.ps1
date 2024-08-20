
$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'cytoscape'
  softwareName   = 'Cytoscape*'

  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'

  url64bit       = 'https://github.com/cytoscape/cytoscape/releases/download/3.10.2/Cytoscape_3_10_2_windows_64bit.exe'

  silentArgs     = '-q'
  validExitCodes = @(0)

  checksum64     = '8E2B92E8F01CCF2FEE97DCBDD9FB31CACE4F45E6298B8504A0EBE937D46107BB'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
