opinions
countOfReviews
	^ (articles flatCollect: [ :each | each reviews ]) size