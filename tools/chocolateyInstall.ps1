$packageName = 'appverifier'
$installerType = 'MSI'
$url = 'http://download.microsoft.com/download/B/6/D/B6D4DF81-0C26-4BA5-BD57-50B7C0935421/ApplicationVerifier.x86.msi'
$url64 = 'http://download.microsoft.com/download/B/6/D/B6D4DF81-0C26-4BA5-BD57-50B7C0935421/ApplicationVerifier.amd64.msi'
$silentArgs = " /l*v ""$env:temp\CHOCO-INSTALL-$packageName.log"" /qn"
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes "$url64"

Write-Output "**************************************************************************************"
Write-Output "*  INSTRUCTIONS: Use the start menu to search for `"Application Verifier...`"        *"
Write-Output "*   More Info:                                                                       *"
Write-Output "*   https://msdn.microsoft.com/en-us/library/windows/desktop/dd371695(v=vs.85).aspx  *"
Write-Output "**************************************************************************************"