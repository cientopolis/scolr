hooks
prepareFileWithDummyCoReview
	| rev |
	rev := CollaborativeReview new.
	rev notes: 'This is an example co-review'.
	FileStream
		forceNewFileNamed: self dummyCoReviewFileReference fullName
		do: [ :aStream | FLSerializer newDefault serialize: rev on: aStream binary ]