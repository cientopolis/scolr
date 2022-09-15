rendering-selectors
renderYearCloudOn: html
	self yearCloudSubcomponent
		with: self selectedArticles
		block: [ :anArticle | Set with: anArticle year ].
	html render: self yearCloudSubcomponent