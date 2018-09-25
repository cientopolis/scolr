testing
testTags
	self assert: oneClassification tags isEmpty.
	oneClassification tags: (Array with: 'B' with: 'B' with: 'A').
	self assert: oneClassification tags size equals: 2.
	self assertCollection: oneClassification tags equals: (SortedCollection with: 'A' with: 'B')