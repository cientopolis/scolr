callbacks
exportAsJSON
	| document |
	document := String streamContents: [:strm | self repository serializeToStream: strm].
	self requestContext
		respond: [ :response | 
			response
				contentType: WAMimeType applicationJson;
				document: document;
				attachmentWithFileName: 'report.json' ]