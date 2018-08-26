testing
testcoReviewAccessCode
	| repo count |
	repo := ObservingFileRepository coReview: aCoReview accessCode: anAccessCode.
	count := 0.
	aCoReview announcer subscriptions subscriptionsOf: repo do: [ :each | count := count + 1 ].
	self assert: count equals: 1