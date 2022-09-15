mapping
documentTypeFrom: aCollection
	^ (labelsToPositionsDictionary includesKey: self labelForDocumentType)
		ifTrue: [ aCollection at: (labelsToPositionsDictionary at: self labelForDocumentType) ]
		ifFalse: [ '' ]