callbacks
classifyArticle: article
	| classificationComponent |
	classificationComponent := ArticleClassificationComponent
		repository: self repository
		currentUser: self currentUser
		accessCredential: accessCredential .
	classificationComponent article: article.
	self call: classificationComponent.
	repository save