New-UnifiedGroup -DisplayName "SPSBE2018-ReorgPrivate" `
	-Alias "O365Group-SPSBE2018-ReorgPrivate" `
	-EmailAddresses "SPSBE2018-ReorgPrivate@globomantics.org" `
	-AccessType Private `
	-HiddenGroupMembershipEnabled

Set-UnifiedGroup -Identity "O365Group-SPSBE2018-ReorgPrivate" -HiddenFromAddressListsEnabled $true
