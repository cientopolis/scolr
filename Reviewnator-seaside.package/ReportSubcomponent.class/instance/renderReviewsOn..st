rendering
renderReviewsOn: html
	| dimensions articles |
	dimensions := self coReview reviewDimensions asSortedCollection.
	articles := self coReview allArticles select: [ :each | each everyoneAgreesToIncludeIt ].
	html heading
		level: 3;
		with: 'Reviews'.
	articles
		do: [ :article | 
			| itsReviews |
			itsReviews := article reviews.
			html heading
				level: 4;
				with: article title.
			html paragraph: 'Reference: ' , article printString.
			html
				paragraph: [ html
						strong: 'abstract ';
						text: article abstract ].
			dimensions
				do: [ :dimension | 
					html heading
						level: 5;
						with: dimension.
					itsReviews
						do: [ :rev | 
							| comment |
							comment := rev commentInDimension: dimension.
							comment notEmpty
								ifTrue: [ html
										paragraph: [ html
												strong: rev author username;
												text: ': ' , comment ] ] ] ] ]