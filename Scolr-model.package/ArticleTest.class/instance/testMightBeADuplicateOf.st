testing
testMightBeADuplicateOf
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
	self assert: (articleOne mightBeADuplicateOf: articleTwo).
	articleTwo title: 'a Title'.
	self assert: (articleOne mightBeADuplicateOf: articleTwo).
	articleTwo title: 'a Title $%/)(=?=_-?¿'.
	self assert: (articleOne mightBeADuplicateOf: articleTwo).
	articleTwo title: 'a Title B'.
	self deny: (articleOne mightBeADuplicateOf: articleTwo)