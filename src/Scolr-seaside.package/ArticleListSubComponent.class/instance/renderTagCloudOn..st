rendering-selectors
renderTagCloudOn: html
	self tagCloudSubcomponent
		with: self selectedArticles
		block: [ :anArticle | anArticle tags ].
	html render: self tagCloudSubcomponent