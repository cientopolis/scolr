callbacks
deleteTempFileIfExists
	uploadedFile asFileReference exists
		ifTrue: [ uploadedFile asFileReference delete ]