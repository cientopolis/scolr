callbacks
submitComment
	self coReview addComment: editedComment.
	editedComment := Comment new.
	self save.