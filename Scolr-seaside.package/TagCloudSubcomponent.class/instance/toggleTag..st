callbacks
toggleTag: aString
	hiddenTags remove: aString ifAbsent: [ hiddenTags add: aString ]