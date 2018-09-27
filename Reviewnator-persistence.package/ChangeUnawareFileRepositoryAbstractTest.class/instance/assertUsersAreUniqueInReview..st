testing
assertUsersAreUniqueInReview: coReview
	self
		assertCollection: (coReview users collect: [ :each | each username ])
		equals: (OrderedCollection with: 'one@here.test' with: 'two@here.test').
	self assert: (coReview users includes: coReview reviews first author)