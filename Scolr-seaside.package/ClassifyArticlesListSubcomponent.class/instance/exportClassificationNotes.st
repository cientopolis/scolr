callback
exportClassificationNotes
	| content |
	content := WAHtmlCanvas builder render: [ :htmlCanvas | self renderClassificationNotes: htmlCanvas ].
	self requestContext
		respond: [ :response | 
			response
				contentType: WAMimeType textHtml;
				document: content;
				attachmentWithFileName: 'report.html' ]