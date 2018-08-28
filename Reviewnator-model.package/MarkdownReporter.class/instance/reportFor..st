reporting
reportFor: aCoReview
	self summaryReportFor: aCoReview.
	self reportReviewsWith: aCoReview.
	self reportExcludedArticlesWith: aCoReview.
	^ stream contents