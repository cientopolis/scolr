private
toJsonString: anObject

	^ String streamContents: [ :stream | 
		  (STONWriter on: stream)
			  keepNewLines: true;
			  newLine: '\n';
			  jsonMode: true;
			  nextPut: anObject ]