rendering-reviews
renderReviewsByDimensionOn: html
	| dimensions includedArticles selectedReviews comment |
	dimensions := self coReview reviewDimensions asSortedCollection.
	includedArticles := (self coReview allArticles select: [ :each | each everyoneAgreesToIncludeIt ]) asSortedCollection.
	dimensions
		do: [ :dimension | 
			html heading
				level: 3;
				with: dimension.
			includedArticles
				do: [ :each | 
					selectedReviews := (each reviews select: [ :rev | (rev commentInDimension: dimension) notEmpty ])
						asSortedCollection: [ :a :b | a author username < b author username ].
					selectedReviews
						ifNotEmpty: [ html paragraph: [ html strong: each printString ].
							selectedReviews
								do: [ :rev | 
									comment := rev commentInDimension: dimension.
									comment
										ifNotEmpty: [ html
												paragraph: [ html
														text: '(' , rev author shortenedUsername , ') :';
														break;
														text: comment ] ] ] ] ] ]