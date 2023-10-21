private
logGptError: error

	self class gptErrorFileName asFileReference writeStreamDo: [ :strm | 
		strm
			setToEnd;
			cr;
			nextPutAll: DateAndTime now printString;
			cr;
			nextPutAll: error asJson ;
			cr ]