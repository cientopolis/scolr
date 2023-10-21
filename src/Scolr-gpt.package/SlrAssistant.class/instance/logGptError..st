private
logGptError: errorAsDictionary

	Transcript
		show: DateAndTime now printString;
		cr;
		show: 'Error while talking to GPT';
		cr;
		cr.

	Transcript
		show: DateAndTime now printString;
		cr;
		show: (errorAsDictionary at: 'message');
		cr;
		cr.

	Transcript
		show: (STON toJsonString: errorAsDictionary);
		cr;
		cr.

	self class gptErrorFileName asFileReference writeStreamDo: [ :strm | 
		strm
			setToEnd;
			cr;
			nextPutAll: DateAndTime now printString;
			cr;
			nextPutAll: (errorAsDictionary at: 'message');
			cr;
			nextPutAll: errorAsDictionary asJson ]