$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'http://www.meshmixer.com/downloads/Autodesk_Meshmixer_v3p5_Win64.exe'

$packageArgs = @{
  packageName   = 'meshmixer'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64

  softwareName  = 'meshmixer*'

  checksum64    = '5D08CB6254E4D4280137D6D37EC689FC3F0C61DAD08BBC978A451AC16B7F271C'
  checksumType64= 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0,1223)
}

Install-ChocolateyPackage @packageArgs










    








