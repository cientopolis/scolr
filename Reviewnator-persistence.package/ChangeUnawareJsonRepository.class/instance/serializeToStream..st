hooks
serializeToStream: aStream
	(NeoJSONWriter on: aStream) nextPut: (DictionaryReviewMapper new serializeCoReview: self coReview)