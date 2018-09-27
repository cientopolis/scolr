hooks
prepareFileWithDummyCoReview
	FileStream
		forceNewFileNamed: self dummyCoReviewFileReference fullName
		do: [ :aStream | FLSerializer newDefault serialize: self dummyCoReview on: aStream binary ]