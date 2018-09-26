callbacks
reviewArticle: article
	| reviewComponent |
	reviewComponent := ArticleReviewComponent repository: self repository currentUser: self currentUser accessCredential: accessCredential .
	reviewComponent article: article.
	self call: reviewComponent.
	repository save