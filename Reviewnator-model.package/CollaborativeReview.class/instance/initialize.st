initialize-release
initialize
	users := OrderedCollection new.
	resultSets := OrderedCollection new.
	notes := 'Tell something about this review. What questions does it try to answer? What is the target audience?'.
	inclusionCriteria := 'Inclusion sets the boundaries for the systematic review. Explain how you will select articles for inclusion.'.
	exclusionCriteria := 'Exclusion criteria set the boundaries for the systematic review. Explain your criteria for rejecting articles.'.
	isPromiscuous := false.
	title := 'Provide a title for your review'.
	comments := OrderedCollection new. 