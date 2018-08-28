reporting
reportFor: aCoReview
	self summaryReportFor: aCoReview.
	self reportReviewsWith: aCoReview.
	^ stream contents