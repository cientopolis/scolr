callbacks
submitForm

	database isEmpty | searchString isEmpty | comment isEmpty
		ifTrue: [ errorMessage ifNil: [ errorMessage := 'All fields are mandatory' ] ]
		ifFalse: [ uploadedFile ifNotNil: [ self import ] ifNil: [ errorMessage ifNil: [ errorMessage := 'Did you attach a file?' ] ] ]