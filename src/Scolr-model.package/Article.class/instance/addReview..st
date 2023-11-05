opinions-reviews
addReview: aReview
	reviews := reviews reject: [ :each | each author = aReview author ].
	reviews add: aReview.
	