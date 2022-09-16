accessing
text

	^ String streamContents: [ :stream | 
		  stream
			  nextPutAll: 'Subject: ';
			  nextPutAll: self subject.
		  stream
			  cr;
			  cr.
		  stream nextPutAll: self body ]