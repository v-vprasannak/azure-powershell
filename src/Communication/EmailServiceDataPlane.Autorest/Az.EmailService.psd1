@{
  GUID = 'e6b0c16e-e56f-425c-9876-73fe2979bf3b'
  RootModule = './Az.EmailService.psm1'
  ModuleVersion = '0.1.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'Microsoft Azure PowerShell: EmailService cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/Az.EmailService.private.dll'
  FormatsToProcess = './Az.EmailService.format.ps1xml'
  FunctionsToExport = 'Get-AzEmailServiceEmailSendResult', 'Send-AzEmailServiceEmail'
  PrivateData = @{
    PSData = @{
      Tags = 'Azure', 'ResourceManager', 'ARM', 'PSModule', 'EmailService'
      LicenseUri = 'https://aka.ms/azps-license'
      ProjectUri = 'https://github.com/Azure/azure-powershell'
      ReleaseNotes = ''
    }
  }
}
