root
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	self koboldMeIfNeededWith: anHtmlRoot. 