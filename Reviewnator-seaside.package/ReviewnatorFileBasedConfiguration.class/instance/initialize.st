initialize
initialize
	adminAccessCode := 'admin'.
	suggestedAccessCodes := SharedQueue new.
	accessCredentials := OrderedCollection new.
	accessCredentials add: self createAdminCredentials.
	storageFolder := 'reviewnator'