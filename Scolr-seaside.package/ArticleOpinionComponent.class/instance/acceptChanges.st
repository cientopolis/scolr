callbacks
acceptChanges
	tagAssignmentToEdit tags: tagAssignmentEditorSubcomponent tags.
	isNewTagAssignment
		ifTrue: [ tagAssignmentEditorSubcomponent tags
				ifNotEmpty: [ article addTagAssignment: tagAssignmentToEdit ] ]
		ifFalse: [ tagAssignmentToEdit tags
				ifEmpty: [ article removeTagAssignment: tagAssignmentToEdit ] ] 