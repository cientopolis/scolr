callbacks
submitForm

	database isEmpty | searchString isEmpty 
		ifTrue: [ 
			errorMessage ifNil: [ 
				importer := nil.
				errorMessage := 'Please, complete the form. Database & Search query are both required' ] ]
		ifFalse: [ 
			uploadedFile
				ifNotNil: [ self import ]
				ifNil: [ 
				errorMessage ifNil: [ errorMessage := 'Did you attach a file?' ] ] ]