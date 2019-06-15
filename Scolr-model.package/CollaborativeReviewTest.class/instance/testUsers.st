testing
testUsers
	self assert: aCoReview users isEmpty.
	aCoReview newOrExistingUserNamed: 'juan'.
	self deny: aCoReview users isEmpty