callbacks
dumpToCsv
	| dumper |
	dumper := CsvDumper new.
	self requestContext
		respond: [ :response | 
			response
				contentType: WAMimeType textCsv;
				document: (dumper dump: self coReview);
				attachmentWithFileName: 'report.csv' ]