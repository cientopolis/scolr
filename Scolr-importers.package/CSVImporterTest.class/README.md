To encode a test file and paste it in a method:

 encodedToPasteInAMethod := 'scopus-onlyMandatoryHeaders-frenchutf8text.csv' asFileReference contents utf8Encoded printString .

More playground expresions to embedd test files

encodedToPasteInAMethod := '/Users/alejandrofernandez/Development/reviewnator/example-files/chi-agriculture_MISSING_HEADERS.csv' asFileReference contents utf8Encoded .

  encodedToPasteInAMethod printString. 

'/Users/alejandrofernandez/Development/reviewnator/example-files/scopus-haptics-agriculture_TITLE_CASE_HEADERS-copy.csv' asFileReference delete.
	stream := '/Users/alejandrofernandez/Development/reviewnator/example-files/scopus-haptics-agriculture_TITLE_CASE_HEADERS-copy.csv' asFileReference  writeStream.
	[ stream
		nextPutAll:  encodedToPasteInAMethod utf8Decoded ]
		ensure: [ stream close ].



'/Users/alejandrofernandez/Development/reviewnator/example-files/scopus-haptics-agriculture_TITLE_CASE_HEADERS-from-method.csv' asFileReference delete.
	stream := '/Users/alejandrofernandez/Development/reviewnator/example-files/scopus-haptics-agriculture_TITLE_CASE_HEADERS-from-method.csv' asFileReference  writeStream.
	[ stream
		nextPutAll:  CSVImporterTest new scopusHapticAgricultireTitleCaseHeaders utf8Decoded ]
		ensure: [ stream close ].
		
		
		
	
encoded utf8Decoded 