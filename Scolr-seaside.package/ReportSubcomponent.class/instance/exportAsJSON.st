callbacks
exportAsJSON
	| dictionary |
	dictionary := DictionaryReviewMapper new
		serializeCoReview: self coReview.
	self requestContext
		respond: [ :response | 
			response
				contentType: WAMimeType applicationJson;
				document: (NeoJSONWriter toStringPretty: dictionary);
				attachmentWithFileName: 'report.json' ]