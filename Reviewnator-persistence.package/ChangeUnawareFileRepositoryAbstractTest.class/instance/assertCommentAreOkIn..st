testing
assertCommentAreOkIn: coReview
	| comment |
	self assert: coReview comments size equals: 1.
	comment := coReview comments first.
	self assert: comment authorEmail equals: 'a@b.c'.
	self assert: comment offeredAccessCode equals: 'code'.
	self assert: comment text equals: 'my comment'.
	self assert: comment timestamp asSeconds closeTo: DateAndTime now asSeconds