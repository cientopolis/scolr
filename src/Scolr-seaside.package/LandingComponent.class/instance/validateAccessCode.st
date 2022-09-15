rendering
validateAccessCode
	self accessCodeIsValid
		ifFalse: [ errorMessage := '"' , accessCode , '"' , ' is not a valid or active access code'.
			accessCode := '' ]