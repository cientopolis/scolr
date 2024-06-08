rendering
renderInputRequestOn: html

	self accessCodeIsValid not
		ifTrue: [
			self renderFormToValidationExistingAccessCodeOn: html.
			self renderFormToRequestAccessCodeOn: html.
			self renderTermsOfUsageAdviceOn: html ]
		ifFalse: [
			(email notNil and: [ email isValidEmail ]) ifFalse: [
				self renderEmailRequestOn: html ] ]