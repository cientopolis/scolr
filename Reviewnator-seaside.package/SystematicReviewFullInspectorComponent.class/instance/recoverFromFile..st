save - restore
recoverFromFile: aFileReference
	FileStream
		oldFileNamed: aFileReference fullName
		do: [ :aStream | self coReview: (FLMaterializer newDefault materializeFrom: aStream binary) root ]