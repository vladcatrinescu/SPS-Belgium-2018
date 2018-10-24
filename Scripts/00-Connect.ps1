$User = "vlad@globomantics.org"
$File = "C:\Scripts\Password.txt"
$cred=New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, (Get-Content $File | ConvertTo-SecureString)
$cred.Password.MakeReadOnly()
cls


$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $cred -Authentication Basic -AllowRedirection
Import-PSSession $Session

Connect-SPOService -Url https://globomanticsorg-admin.sharepoint.com/ -Credential $cred
Connect-PnPOnline -Url https://globomanticsorg-admin.sharepoint.com/ -Credentials $cred

Import-Module AzureADPreview
Connect-AzureAD -Credential $cred
