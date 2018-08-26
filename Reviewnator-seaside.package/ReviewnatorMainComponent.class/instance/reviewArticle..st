callbacks
reviewArticle: article

	| reviewComponent |
	reviewComponent := ArticleReviewComponent new.
	reviewComponent
		article: article
		user: currentUser.
	self call: reviewComponent.
	repository save.