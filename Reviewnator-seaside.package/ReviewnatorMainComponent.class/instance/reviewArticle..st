callbacks
reviewArticle: article
	| reviewComponent |
	reviewComponent := ArticleReviewComponent repository: self repository currentUser: self currentUser.
	reviewComponent article: article.
	self call: reviewComponent.
	repository save