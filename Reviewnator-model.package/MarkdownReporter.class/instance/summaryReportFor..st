reporting
summaryReportFor: aCoReview
	stream
		nextPutAll: '#Review summary';
		crlf;
		crlf;
		nextPutAll: '##Notes';
		crlf;
		nextPutAll: aCoReview notes;
		crlf;
		crlf;
		nextPutAll: '##Inclusion criteria';
		crlf;
		nextPutAll: aCoReview inclusionCriteria;
		crlf;
		crlf;
		nextPutAll: '##Exclusion criteria';
		crlf;
		nextPutAll: aCoReview exclusionCriteria;
		crlf;
		crlf;
		nextPutAll: '##Contributors';
		crlf.
	aCoReview users
		do: [ :each | 
			stream
				nextPutAll: '* ' , each username;
				crlf ]