accessing
printOn: aStream
	aStream nextPutAll: 'On ' , date printString , ', ' , self usernameWithoutDomain , ' ' , text