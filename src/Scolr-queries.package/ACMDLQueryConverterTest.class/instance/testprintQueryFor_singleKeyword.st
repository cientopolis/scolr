testing
testprintQueryFor_singleKeyword

	self assert: (converter printQueryFor: (QueryKeyword text: 'abc')) equals: 'TITLE-ABS-KEY ( abc )' 