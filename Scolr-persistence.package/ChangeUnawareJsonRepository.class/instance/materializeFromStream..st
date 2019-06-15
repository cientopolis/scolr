hooks
materializeFromStream: aStream
	| reader |
	reader := NeoJSONReader on: aStream.
	reader
		mapInstVarsFor: BibtexEntry;
		mapInstVarsFor: BibtexTag.
	^ DictionaryReviewMapper new materializeCoReviewFrom: reader next