hooks
serializeToStream: aStream
	(NeoJSONWriter on: aStream)
		prettyPrint: true;
		nextPut: (DictionaryReviewMapper new serializeCoReview: self coReview)