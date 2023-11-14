testing
testMajorityAgreesToExcludeIt

	self deny: articleOne majorityAgreesToExcludeIt.
	articleOne addClassification: (Classification new
			 excludeIt;
			 yourself).
	self assert: articleOne majorityAgreesToExcludeIt.
	articleOne addClassification: (Classification new
			 undecided;
			 yourself).
	self deny: articleOne majorityAgreesToExcludeIt.
	articleOne addClassification: (Classification new
			 excludeIt;
			 yourself).
	self assert: articleOne majorityAgreesToExcludeIt