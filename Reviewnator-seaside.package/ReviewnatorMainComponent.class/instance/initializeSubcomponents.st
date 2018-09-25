initialize-release
initializeSubcomponents
	setSelectorSubcomponent := SetSelectorSubComponent parent: self.
	articleListSubComponent := ArticleListSubComponent parent: self.
	classifyArticlesListSubcomponent := ClassifyArticlesListSubcomponent
		parent: self.
	reviewArticlesListSubcomponent := ReviewArticlesListSubcomponent
		parent: self.
	reviewSummarySubComponent := ReviewSummarySubComponent parent: self