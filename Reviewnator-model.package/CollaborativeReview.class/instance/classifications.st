classifications
classifications
	^ self allArticles inject: Set new into: [ :sub :each | sub , each classifications ]