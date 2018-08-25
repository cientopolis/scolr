save - restore
saveToFile: aFileReference
	FileStream
		forceNewFileNamed: aFileReference fullName 
		do: [ :aStream | FLSerializer newDefault serialize: self coReview on: aStream binary ]