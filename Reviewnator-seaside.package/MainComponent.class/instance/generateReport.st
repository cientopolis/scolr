callbacks
generateReport
	| reporter |
	reporter := MarkdownReporter new.
	self requestContext
		respond: [ :response | 
			response
				contentType: (WAMimeType fromString: 'text/markdown');
				document: (reporter reportFor: self coReview);
				attachmentWithFileName: 'report.md' ]