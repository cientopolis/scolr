callbacks
generateMarkdownReport
	| mdCanvas |
	mdCanvas := MarkdownCanvas new.
	self renderReportOn: mdCanvas.
	mdCanvas expand. 
	self requestContext
		respond: [ :response | 
			response
				contentType: (WAMimeType fromString: 'text/markdown');
				document: mdCanvas printString;
				attachmentWithFileName: 'report.md' ]