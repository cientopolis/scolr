rendering
renderContentOn: html
	isEditing
		ifTrue: [ self renderEditingOn: html ]
		ifFalse: [ self renderDisplayingOn: html ]