callbacks
classifyArticle: article
	| classificationComponent |
	classificationComponent := ArticleClassificationComponent
		repository: self repository
		currentUser: self currentUser.
	classificationComponent article: article.
	self call: classificationComponent.
	repository save