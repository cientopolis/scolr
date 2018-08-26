callbacks
classifyArticle: article

	| classificationComponent |
	classificationComponent := ArticleClassificationComponent new.
	classificationComponent
		article: article
		user: currentUser.
	self call: classificationComponent.
	repository save.