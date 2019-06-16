callbacks
generateLatexReport
	| reporter |
	reporter := LatexReporter new.
	reporter coReview: self coReview.
	self requestContext
		respond: [ :response | 
			response
				contentType: ZnMimeType textPlain;
				document: reporter report;
				attachmentWithFileName: 'report.tex' ]