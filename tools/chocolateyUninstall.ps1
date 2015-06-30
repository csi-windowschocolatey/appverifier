
Try 
  {
  Start-ChocolateyProcessAsAdmin "/x{134486FB-10FE-4B26-B1B6-CAB054AA7A1F} /l*v $env:temp\CHOCO-UNINSTALL-appverifier32-bit.log /qn" 'msiexec.exe' -ValidExitCodes @(0,3010,1605)
  Start-ChocolateyProcessAsAdmin "/x{46D5EFC2-64EC-49D0-AF71-3ABDF5C61AF4} /l*v $env:temp\CHOCO-UNINSTALL-appverifier64-bit.log /qn" 'msiexec.exe' -ValidExitCodes @(0,3010,1605)
  }
catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}