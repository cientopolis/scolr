hooks
prepareFileWithDummyCoReview
	self dummyCoReviewFileReference fullName asFileReference
		ensureDelete;
		writeStreamDo: [ :aStream | 
			(NeoJSONWriter on: aStream)
				mapInstVarsFor: BibtexEntry;
				mapInstVarsFor: BibtexTag;
				nextPut: (DictionaryReviewMapper new serializeCoReview: self dummyCoReview) ]