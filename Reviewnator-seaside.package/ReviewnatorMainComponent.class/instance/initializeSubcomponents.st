initialize-release
initializeSubcomponents
	uploadComponent := FileUploaderComponent new.
	setSelectorSubcomponent := SetSelectorSubComponent parent: self.
	articleListSubComponent := ArticleListSubComponent parent: self.
	reviewSummarySubComponent := ReviewSummarySubComponent parent: self