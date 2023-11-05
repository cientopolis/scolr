testing
testIsWaitingForDecisionBy
	| cl |
	self assert: (articleOne isWaitingForDecisionBy: userA).
	cl := Classification new
		author: userA;
		includeIt;
		yourself.
	articleOne addClassification: cl.
	self deny: (articleOne isWaitingForDecisionBy: userA).
	cl forget.
	self assert: (articleOne isWaitingForDecisionBy: userA)