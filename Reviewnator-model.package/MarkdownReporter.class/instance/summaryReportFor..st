reporting
summaryReportFor: aCoReview
	stream
		nextPutAll: '#Review summary';
		crlf;
		nextPutAll: '##Notes';
		crlf;
		nextPutAll: aCoReview notes;
		crlf;
		nextPutAll: '##Inclusion criteria';
		crlf;
		nextPutAll: aCoReview inclusionCriteria;
		crlf;
		nextPutAll: '##Exclusion criteria';
		crlf;
		nextPutAll: aCoReview exclusionCriteria;
		crlf;
		nextPutAll: '##Contributors'.
	aCoReview users
		do: [ :each | 
			stream
				nextPutAll: '* ' , each username;
				crlf ]