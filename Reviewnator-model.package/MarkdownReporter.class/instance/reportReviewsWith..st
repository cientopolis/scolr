reporting
reportReviewsWith: aCoReview
	| dimensions articles |
	dimensions := aCoReview reviewDimensions asSortedCollection.
	articles := aCoReview allArticles reject: [ :each | aCoReview mostPeopleAgreeToExclude: each ].
	stream
		crlf;
		crlf;
		nextPutAll: '# Reviews';
		crlf.
	articles
		do: [ :article | 
			| itsReviews |
			itsReviews := aCoReview reviewsFor: article.
			stream
				crlf;
				crlf;
				nextPutAll: '## ' , article title;
				crlf;
				nextPutAll: article printString;
				crlf;
				crlf;
				nextPutAll: '**abstract** ' , article abstract;
				crlf.
			dimensions
				do: [ :dimension | 
					stream
						crlf;
						crlf;
						nextPutAll: '### ' , dimension;
						crlf;
						crlf.
					itsReviews
						do: [ :rev | 
							| comment |
							comment := rev commentInDimension: dimension.
							comment notEmpty
								ifTrue: [ stream
										nextPutAll: '**(' , rev author username , ')** ';
										nextPutAll: comment;
										crlf;
										crlf ] ] ] ]