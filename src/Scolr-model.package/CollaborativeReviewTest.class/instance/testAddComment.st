testing
testAddComment
	| rev comment |
	rev := CollaborativeReview new.
	self assert: rev comments isEmpty.
	comment := Comment new
		authorEmail: 'a@b.c';
		offeredAccessCode: 'code';
		text: 'my comment';
		yourself.
	rev addComment: comment.
	self assert: rev comments first equals: comment.
	self
		assert: comment timestamp asSeconds
		closeTo: DateAndTime now asSeconds