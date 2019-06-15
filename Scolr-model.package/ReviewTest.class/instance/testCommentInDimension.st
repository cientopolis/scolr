testing
testCommentInDimension
	| review |
	review := Review new.
	self assert: (review commentInDimension: 'b') isEmpty.
	self assert: review dimensions isEmpty.
	review comment: '' inDimension: 'b'.
	self assert: review dimensions isEmpty.
	self assert: (review commentInDimension: 'b') isEmpty.
	review comment: 'a' inDimension: 'b'.
	self assertCollection: review dimensions equals: (Array with: 'b').
	self assert: (review commentInDimension: 'b') equals: 'a'