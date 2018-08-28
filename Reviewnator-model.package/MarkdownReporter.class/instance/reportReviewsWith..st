reporting
reportReviewsWith: aCoReview
	| dimensions articles |
	dimensions := aCoReview reviewDimensions asSortedCollection.
	articles := aCoReview allArticles.
	stream
		crlf;
		nextPutAll: '#Reviews';
		crlf.
	articles
		do: [ :article | 
			| itsReviews |
			itsReviews := aCoReview reviewsFor: article.
			stream
				crlf;
				nextPutAll: '##' , article title;
				crlf;
				nextPutAll: article printString;
				crlf.
			dimensions
				do: [ :dimension | 
					stream
						crlf;
						nextPutAll: '###' , dimension;
						crlf.
					itsReviews
						do: [ :rev | 
							| comment |
							comment := rev commentInDimension: dimension.
							comment notEmpty
								ifTrue: [ stream
										nextPutAll: '**' , rev author username , '**';
										crlf;
										nextPutAll: comment;
										crlf ] ] ] ]