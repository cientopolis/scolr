hooks
prepareFileWithDummyCoReview
	FileStream
		forceNewFileNamed: self dummyCoReviewFileReference fullName
		do: [ :aStream | (NeoJSONWriter on: aStream) nextPut: (DictionaryReviewMapper new serializeCoReview: self dummyCoReview) ]