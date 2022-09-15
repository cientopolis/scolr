accessing
usersThatAcceptedTermsAndConditions
	^ usersThatAcceptedTermsAndConditions ifNil: [ usersThatAcceptedTermsAndConditions := Set new ]