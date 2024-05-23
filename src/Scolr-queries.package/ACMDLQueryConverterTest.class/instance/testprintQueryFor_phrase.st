testing
testprintQueryFor_phrase

	self assert: (converter printQueryFor: (QueryPhrase text: 'abc def')) equals: 'Title: ("abc def") OR Abstract: ("abc def")' 
	
