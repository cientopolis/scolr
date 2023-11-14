testing
testMajorityAgreesToIncludeIt

	self deny: articleOne majorityAgreesToIncludeIt.
	articleOne addClassification: (Classification new
			 includeIt;
			 yourself).
	self assert: articleOne majorityAgreesToIncludeIt.
	articleOne addClassification: (Classification new
			 undecided;
			 yourself).
	self deny: articleOne majorityAgreesToIncludeIt.
	articleOne addClassification: (Classification new
			 includeIt;
			 yourself).
	self assert: articleOne majorityAgreesToIncludeIt