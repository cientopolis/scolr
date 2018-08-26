private
prepareFileWithDummyCoReview
	| rev |
	fileReferenceWithDummyCoReview := (FileSystem workingDirectory resolveString: storageFolderName) / 'dummyCoReview.fuel'.
	rev := CollaborativeReview new.
	rev notes: 'This is an example co-review'.
	FileStream
		forceNewFileNamed: fileReferenceWithDummyCoReview fullName
		do: [ :aStream | FLSerializer newDefault serialize: rev on: aStream binary ]