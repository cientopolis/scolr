callbacks
generateHtmlReport
	| content |
	content := WAHtmlCanvas builder
		render: [ :htmlCanvas | self renderReportOn: htmlCanvas ].
	self requestContext
		respond: [ :response | 
			response
				contentType: WAMimeType textHtml;
				document: content;
				attachmentWithFileName: 'report.html' ]