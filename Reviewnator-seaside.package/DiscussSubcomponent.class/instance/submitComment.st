callbacks
submitComment
	self overrideAuthorAndCodeFromSessionIfAvailable.
	editedComment authorEmail isValidEmail
		ifFalse: [ ^ self parent errorMessage: '"' , editedComment authorEmail , '" does not look as a valid email' ].
	(self parent configuration activeAccessCodes includes: editedComment offeredAccessCode)
		ifFalse: [ ^ self parent errorMessage: '"' , editedComment offeredAccessCode , '" is not an active access code' ].
	editedComment text isEmpty
		ifTrue: [ ^ self parent errorMessage: 'Do not forget to write a comment! You left it empty.' ].
	self coReview addComment: editedComment.
	editedComment := Comment new.
	self save