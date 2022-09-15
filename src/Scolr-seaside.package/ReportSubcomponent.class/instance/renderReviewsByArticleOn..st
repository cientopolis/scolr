rendering-reviews
renderReviewsByArticleOn: html
	| dimensions articles |
	dimensions := self coReview reviewDimensions asSortedCollection.
	articles := self coReview allArticles select: [ :each | each everyoneAgreesToIncludeIt ].
	articles
		do: [ :article | 
			html heading
				level: 3;
				with: article title.
			html paragraph: 'Reference: ' , article printString.
			showAbstracts
				ifTrue: [ html
						paragraph: [ html
								strong: 'abstract';
								text: ' ' , article abstract ] ].
			self renderReviewsFor: article considering: dimensions on: html ]