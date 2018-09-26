testing
isOnlyAdmin: aReviewnatorAccessCredential
	^ aReviewnatorAccessCredential isAdmin
		&
			((cachedConfiguration accessCredentials count: [ :each | each isAdmin & each isActive ])
				= 1)