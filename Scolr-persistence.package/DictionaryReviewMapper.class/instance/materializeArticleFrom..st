materialize
materializeArticleFrom: aDictionary
	^ Article new
		authors: (aDictionary at: #authors);
		title: (aDictionary at: #title);
		year: (aDictionary at: #year);
		abstract: (aDictionary at: #abstract);
		documentType: (aDictionary at: #documentType);
		classifications:
			((aDictionary at: #classifications)
				collect: [ :each | self materializeClassificationFrom: each ])
				asOrderedCollection;
		reviews:
			((aDictionary at: #reviews)
				collect: [ :each | self materializeReviewFrom: each ])
				asOrderedCollection;
		bibtexEntry: (aDictionary at: #bibtexEntry);
		yourself