testing
testNewOrExistingUserNamed
	| juan |
	juan := aCoReview newOrExistingUserNamed: 'juan'.
	self assert: juan notNil.
	self assert: juan username equals: 'juan'.
	juan := aCoReview newOrExistingUserNamed: 'juan'.
	self assert: juan notNil.
