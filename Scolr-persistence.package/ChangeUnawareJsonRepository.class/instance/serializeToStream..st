hooks
serializeToStream: aStream
	(NeoJSONWriter on: aStream)
		prettyPrint: true;
		mapInstVarsFor: BibtexEntry;
		mapInstVarsFor: BibtexTag;
		nextPut: (DictionaryReviewMapper new serializeCoReview: self coReview)