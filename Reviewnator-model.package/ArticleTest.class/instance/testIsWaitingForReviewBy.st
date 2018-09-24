testing
testIsWaitingForReviewBy
	self assert: (articleOne isWaitingForReviewBy: aUser).
	articleOne
		addReview:
			(Review new
				author: aUser;
				yourself).
	self deny: (articleOne isWaitingForReviewBy: aUser)