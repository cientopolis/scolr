serialize
serializeTagAssingment: aTagAssingment 
	^ Dictionary new
		at: #date put: aTagAssingment date mmddyyyy;
		at: #author put: (self serializeUser: aTagAssingment author);
		at: #tags put: aTagAssingment tags;
		yourself