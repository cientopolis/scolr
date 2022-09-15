testing
testIsWaitingForDecisionBy
	| cl |
	self assert: (articleOne isWaitingForDecisionBy: aUser).
	cl := Classification new
		author: aUser;
		includeIt;
		yourself.
	articleOne addClassification: cl.
	self deny: (articleOne isWaitingForDecisionBy: aUser).
	cl forget.
	self assert: (articleOne isWaitingForDecisionBy: aUser)