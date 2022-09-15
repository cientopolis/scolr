accessing
tags
	| tags |
	tags := Set new.
	tagAssignments do: [ :each | each collectTagsIn: tags ].
	^ tags