testing
assertBibtexEntriesAreOk: coReview
	self
		assert:
			((coReview allArticles select: [ :each | each bibtexEntry notNil ])
				allSatisfy: [ :each | each bibtexEntry class = BibtexEntry ])