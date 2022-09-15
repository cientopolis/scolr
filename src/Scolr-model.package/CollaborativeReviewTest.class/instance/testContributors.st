testing
testContributors
	| oneUser anotherUser |
	oneUser := User new.
	anotherUser := User new.
	self assert: aCoReview contributors isEmpty.
	articleOne
		addClassification:
			(Classification new
				author: oneUser;
				yourself).
	self assert: aCoReview contributors size equals: 1.
	articleThree
		addReview:
			(Review new
				author: oneUser;
				yourself).
	self assert: aCoReview contributors size equals: 1.
	articleTwo
		addReview:
			(Review new
				author: anotherUser;
				yourself).
	self assert: aCoReview contributors size equals: 2