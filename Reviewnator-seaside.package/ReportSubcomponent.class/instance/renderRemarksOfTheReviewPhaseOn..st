rendering
renderRemarksOfTheReviewPhaseOn: html
	| included avgReviews |
	html paragraph: [ html strong: 'Remarks about the review phase' ].
	included := self coReview includedArticles.
	avgReviews := included ifEmpty: [ 0 ] ifNotEmpty: [ (included collect: [ :each | each reviews size ]) average round: 2 ].
	html
		paragraph:
			included size printString , ' articles were considered for review. Each of them was reviewed, in average, by '
				, avgReviews printString , ' contributors in average.';
		paragraph: 'All articles were reviewed along the following dimensions:  '.
	html unorderedList: [ self coReview reviewDimensions do: [ :dim | html listItem: dim ] ].
	html paragraph: ''.