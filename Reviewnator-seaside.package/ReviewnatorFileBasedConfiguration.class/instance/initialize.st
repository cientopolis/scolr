initialize
initialize
	adminAccessCode := 'admin'.
	activeAccessCodes := Set new.
	suggestedAccessCodes := SharedQueue new.
	accessCredentials := OrderedCollection new.
	accessCredentials add: self createAdminCredentials.
	storageFolder := 'reviewnator'