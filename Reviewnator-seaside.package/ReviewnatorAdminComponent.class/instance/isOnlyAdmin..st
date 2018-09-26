testing
isOnlyAdmin: aReviewnatorAccessCredential
	^ aReviewnatorAccessCredential isAdmin
		& ((self configuration accessCredentials count: [ :each | each isAdmin & each isActive]) = 1)