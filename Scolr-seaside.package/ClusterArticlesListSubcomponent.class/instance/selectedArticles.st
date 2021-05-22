accessing
selectedArticles
	^ self coReview allArticles select: [ :each | each everyoneAgreesToIncludeIt ]