printing
printQueryFor: aQueryTerm

	^ String streamContents: [ :strm | 
		  self printQueryFor: aQueryTerm on: strm ]