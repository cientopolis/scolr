callback
renderClassificationNotes: html
	| classifications |
	html heading
		level: 2;
		with: 'Classification notes'.
	self coReview allArticles asSortedCollection
		do: [ :each | 
			classifications := each classifications
				asSortedCollection: [ :a :b | a author username < b author username ].
			html heading
				level: 3;
				with: each printString.
			classifications
				do: [ :cl | 
					html
						paragraph: [ html
								strong: cl author shortenedUsername;
								text: ' (' , cl decision , ')';
								break.
							html text: cl comments ] ] ]