callbacks
ensureAcceptanceOfTermsAndConditions
	^ (self configuration usersThatAcceptedTermsAndConditions includes: email)
		ifFalse: [ self
				call:
					(AcceptTermsAndConditionsComponent new
						email: email;
						yourself) ]
		ifTrue: [ true ]