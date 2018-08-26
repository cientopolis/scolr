initialize-release
initializeSubcomponents
	uploadComponent := FileUploaderComponent new.
	reportsComponent := ReportsComponent new.
	setSelectorSubcomponent := SetSelectorSubComponent parent: self.
	articleListSubComponent := ArticleListSubComponent parent: self