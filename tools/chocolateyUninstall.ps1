
Try 
  {
  Start-ChocolateyProcessAsAdmin "/x{0F5AEBB0-43F3-4571-ACE7-A7942E8AA179} /l*v $env:temp\CHOCO-UNINSTALL-applicationcompatibilitytoolkit.log /qn" 'msiexec.exe' -ValidExitCodes @(0,3010)
  Write-ChocolateySuccess $package
  }
catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}