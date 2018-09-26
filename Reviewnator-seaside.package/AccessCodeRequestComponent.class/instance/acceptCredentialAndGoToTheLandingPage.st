callbacks
acceptCredentialAndGoToTheLandingPage
	ReviewnatorFileBasedConfiguration load
		addAccessCredential: credential;
		save.
	self show: LandingComponent new