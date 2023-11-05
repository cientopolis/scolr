testing
testIsWaitingForReviewBy
	self assert: (articleOne isWaitingForReviewBy: userA).
	articleOne
		addReview:
			(Review new
				author: userA;
				yourself).
	self deny: (articleOne isWaitingForReviewBy: userA)