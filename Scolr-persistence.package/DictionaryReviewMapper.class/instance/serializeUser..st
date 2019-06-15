serialize
serializeUser: aUser
	^ Dictionary new
		at: #username put: aUser username;
		at: #lastLoginTimeStamp put: aUser lastLoginTimeStamp printString;
		yourself