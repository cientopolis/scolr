serialize
serializeReview: aReview
	^ Dictionary new
		at: #date put: aReview date mmddyyyy;
		at: #author put: (self serializeUser: aReview author);
		at: #tags put: aReview tags;
		at: #dimensionSpecificComments put: aReview dimensionSpecificComments;
		yourself