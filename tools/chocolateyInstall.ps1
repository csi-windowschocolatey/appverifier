$packageName = 'appverifier'
$installerType = 'MSI'
$url = 'http://download.microsoft.com/download/B/6/D/B6D4DF81-0C26-4BA5-BD57-50B7C0935421/ApplicationVerifier.x86.msi'
$url64 = 'http://download.microsoft.com/download/B/6/D/B6D4DF81-0C26-4BA5-BD57-50B7C0935421/ApplicationVerifier.amd64.msi'
$silentArgs = " /l*v $env:temp\CHOCO-INSTALL-$packageName.log /qn"
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes "$url64"