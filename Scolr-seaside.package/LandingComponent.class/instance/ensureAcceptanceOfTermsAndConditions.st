callbacks
ensureAcceptanceOfTermsAndConditions
	^ (self configuration usersThatAcceptedTermsAndConditions includes: email asLowercase)
		ifFalse: [ self
				call:
					(AcceptTermsAndConditionsComponent new
						email: email asLowercase;
						yourself) ]
		ifTrue: [ true ]