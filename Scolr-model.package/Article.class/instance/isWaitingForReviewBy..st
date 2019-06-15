opinions-reviews
isWaitingForReviewBy: aUser
	^ (reviews anySatisfy: [ :each | each author = aUser ]) not