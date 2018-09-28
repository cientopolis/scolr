rendering
renderReviewsOn: html
	| dimensions articles |
	dimensions := self coReview reviewDimensions asSortedCollection.
	articles := self coReview allArticles select: [ :each | each everyoneAgreesToIncludeIt ].
	html heading
		level: 2;
		with: 'Review notes'.
	articles
		do: [ :article | 
			| itsReviews |
			itsReviews := self reviewsAsDictionary: article onDimentions: dimensions.
			html heading
				level: 3;
				with: article title.
			html paragraph: 'Reference: ' , article printString.
			html
				paragraph: [ html
						strong: 'abstract';
						text: ' ' , article abstract ].
			dimensions
				do: [ :dim | 
					html paragraph: [ html strong: dim ].
					(itsReviews at: dim) notEmpty
						ifTrue: [ html
								unorderedList: [ (itsReviews at: dim)
										do: [ :each | 
											html
												listItem: [ html
														strong: each key , ':';
														text: ' ' , each value ] ] ] ] ] ]