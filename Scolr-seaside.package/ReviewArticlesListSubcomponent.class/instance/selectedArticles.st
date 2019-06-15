accessing
selectedArticles
	^ self coReview allArticles reject: [ :each | each everyoneAgreesToExcludeIt ]