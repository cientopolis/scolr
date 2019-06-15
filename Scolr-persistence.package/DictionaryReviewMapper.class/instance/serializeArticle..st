serialize
serializeArticle: anArticle
	^ Dictionary new
		at: #authors put: anArticle authors;
		at: #title put: anArticle title;
		at: #year put: anArticle year;
		at: #abstract put: anArticle abstract;
		at: #documentType put: anArticle documentType;
		at: #classifications
			put:
			(anArticle classifications
				collect: [ :each | self serializeClassification: each ]);
		at: #reviews
			put: (anArticle reviews collect: [ :each | self serializeReview: each ]);
		at: #bibtexEntry put: anArticle bibtexEntry ;
		yourself