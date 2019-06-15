testing
testHasDuplicateIn
	articleOne := Article
		title: 'A title '
		authors: ''
		year: ''
		abstract: ''
		documentType: ''.
	self assert: (articleOne mightBeADuplicateOf: articleOne).
	articleTwo := Article
		title: 'A title '
		authors: ''
		year: ''
		abstract: ''
		documentType: ''.
	self deny: (articleOne hasDuplicateIn: Set new).
	self deny: (articleOne hasDuplicateIn: (Set with: Article new)).
	self assert: (articleOne hasDuplicateIn: (Set with: articleOne)).
	self assert: (articleOne hasDuplicateIn: (Set with: articleTwo)).
	self
		assert: (articleOne hasDuplicateIn: (Set with: articleTwo with: Article new))