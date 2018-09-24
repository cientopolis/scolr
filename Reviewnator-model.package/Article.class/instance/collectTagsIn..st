accessing
collectTagsIn: aCollection
	^ classifications , reviews
		do: [ :each | each collectTagsIn: aCollection ]