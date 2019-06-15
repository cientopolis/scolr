callbacks
deleteTempFileIfExists
	(uploadedFile notNil and: [ uploadedFile asFileReference exists ])
		ifTrue: [ uploadedFile asFileReference delete ]