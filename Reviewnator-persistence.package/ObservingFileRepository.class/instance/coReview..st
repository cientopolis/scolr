private
coReview: anObject
	coReview ifNotNil: [ coReview announcer unsubscribe: self ].
	coReview := anObject.
	coReview announcer when: ReviewnatorAnnouncement send: #save to: self