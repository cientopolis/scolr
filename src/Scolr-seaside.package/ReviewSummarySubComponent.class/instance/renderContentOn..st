rendering
renderContentOn: html

	isEditing
		ifTrue: [ self renderEditingOn: html ]
		ifFalse: [ 
			spawned
				ifTrue: [ 
					html tbsContainer
						style: 'padding-top: 3em;';
						with: [ self renderDisplayingOn: html ] ]
				ifFalse: [ self renderDisplayingOn: html ] ]