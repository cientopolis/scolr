accessing
collectTagsIn: aCollection
	^ tagAssignments do: [ :each | each collectTagsIn: aCollection ]