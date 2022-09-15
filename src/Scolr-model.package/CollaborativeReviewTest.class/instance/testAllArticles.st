testing
testAllArticles
	| rev |
	rev := CollaborativeReview new.
	self assert: rev allArticles isEmpty.
	rev addResultSet: aResultSet.
	self assert: rev allArticles size equals: 2.
	rev addResultSet: anotherResultSet.
	self assert: rev allArticles size equals: 3