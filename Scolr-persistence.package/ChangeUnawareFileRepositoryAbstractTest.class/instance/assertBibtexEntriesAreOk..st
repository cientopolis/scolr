testing
assertBibtexEntriesAreOk: coReview
	self
		assert:
			(coReview allArticles select: [ :each | each bibtexEntry notNil ])
				notEmpty