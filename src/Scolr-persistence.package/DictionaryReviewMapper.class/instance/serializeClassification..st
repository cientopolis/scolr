serialize
serializeClassification: aClassification
	^ Dictionary new
		at: #date put: aClassification date mmddyyyy;
		at: #author put: (self serializeUser: aClassification author);
		at: #decision put: aClassification decision;
		at: #comments put: aClassification comments;
		yourself