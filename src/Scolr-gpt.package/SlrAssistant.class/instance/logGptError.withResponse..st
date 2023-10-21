private
logGptError: error withResponse: responseDictionary

	Transcript
		show: DateAndTime now printString;
		cr;
		show: 'Error while talking to GPT';
		cr;
		cr.

	Transcript
		show: DateAndTime now printString;
		cr;
		show: error;
		cr;
		cr.

	Transcript
		show: (STON toJsonString: responseDictionary);
		cr;
		cr.

	self class gptErrorFileName asFileReference writeStreamDo: [ :strm | 
		strm
			setToEnd;
			cr;
			nextPutAll: DateAndTime now printString;
			cr;
			nextPutAll: error;
			cr;
			nextPutAll: (responseDictionary asJson) ]