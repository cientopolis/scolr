accessing
printOn: aStream
	aStream nextPutAll: 'On ' , date printString , ', ' , user username , ' ' , text