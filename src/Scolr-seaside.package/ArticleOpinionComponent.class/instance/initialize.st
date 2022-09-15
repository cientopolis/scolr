initialize-release
initialize
	reviewSummarySubComponent := ReviewSummarySubComponent parent: self.
	tagAssignmentEditorSubcomponent := TagAssignmentEditorSubcomponent
		parent: self.
	articleSummarySubcomponent := ArticleSummarySubcomponent parent: self.
	super initialize