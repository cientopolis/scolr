gpt
generateTxtGptCritic

	| content assistant |
	assistant := SlrAssistant new
		             slr: self coReview;
		             yourself.
	content := String streamContents: [ :strm | 
		           strm
			           nextPutAll:
				           'AI generated critic for your review plan - use with care';
			           cr.
		           strm
			           nextPutAll: 'Timestamp: ' , DateAndTime now printString;
			           cr; cr.
		           strm nextPutAll: assistant yourCriticsForThePlan; cr;cr.
		           strm
			           nextPutAll: '### BASIC GUIDELINES to plan your review';
			           cr;
			           cr.
		           strm nextPutAll: GptCritic guidelinesForReviews ].
	self requestContext respond: [ :response | 
		response
			contentType: WAMimeType textPlain;
			document: content;
			attachmentWithFileName: 'ai-critic.md' ]