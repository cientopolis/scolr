initialize
initialize
	adminAccessCode := 'admin'.
	activeAccessCodes := Set new.
	accessCredentials := OrderedCollection with: self createAdminCredentials.
	storageFolder := 'reviewnator'