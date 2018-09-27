hooks
materializeFromStream: aStream
	^ DictionaryReviewMapper new materializeCoReviewFrom: (NeoJSONReader on: aStream) next