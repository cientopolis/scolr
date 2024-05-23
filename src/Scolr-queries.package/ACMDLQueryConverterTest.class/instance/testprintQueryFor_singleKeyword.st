testing
testprintQueryFor_singleKeyword

	self assert: (converter printQueryFor: (QueryKeyword text: 'abc')) equals: 'Title: (abc) OR Abstract: (abc)' 
	
