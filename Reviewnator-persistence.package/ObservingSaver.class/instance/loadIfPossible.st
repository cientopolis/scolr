load and save
loadIfPossible
	self storageFileFullName asFileReference exists
		ifTrue: [ FileStream
				oldFileNamed: self storageFileFullName
				do: [ :aStream | self coReview: (FLMaterializer newDefault materializeFrom: aStream binary) root ] ]