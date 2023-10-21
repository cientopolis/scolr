testing
testYourClassificationOpinionFor

	| opinion |
	opinion := assistant yourClassificationOpinionFor: article.
	self assert: opinion notNil.
	self assert: opinion comments notEmpty.
	self assert: (opinion toExclude xor: [ 
			 opinion toInclude xor: [ opinion undecided ] ])