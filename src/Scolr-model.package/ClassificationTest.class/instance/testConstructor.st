testing
testConstructor
	self deny: oneClassification toExclude.
	self deny: oneClassification toInclude.
	self assert: oneClassification undecided 