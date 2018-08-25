callbacks
fullCsvDump
	| stream sum |
	stream := String new writeStream.
	self stream: self headingRow into: stream.
	self coReview allArticles
		do: [ :each | 
			sum := each summaryFor: nil on: self coReview.
			self stream: (self articleSummaryToRow: sum) into: stream ].
	self requestContext
		respond: [ :response | 
			response
				contentType: WAMimeType textCsv ;
				document: stream contents;
				attachmentWithFileName: 'report.csv' ]