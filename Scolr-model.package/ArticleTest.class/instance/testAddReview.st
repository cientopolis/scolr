testing
testAddReview
	| review |
	review := Review new.
	articleOne addReview: review.
	self assert: articleOne reviews size equals: 1.
	self assert: articleOne reviews first equals: review