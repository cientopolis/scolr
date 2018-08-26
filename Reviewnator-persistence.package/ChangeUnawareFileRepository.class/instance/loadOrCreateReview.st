private
loadOrCreateReview
	| review |
	review := CollaborativeReview new.
	self storageFileFullName asFileReference exists
		ifTrue: [ FileStream
				oldFileNamed: self storageFileFullName
				do: [ :aStream | review := (FLMaterializer newDefault materializeFrom: aStream binary) root ] ].
	coReview := review