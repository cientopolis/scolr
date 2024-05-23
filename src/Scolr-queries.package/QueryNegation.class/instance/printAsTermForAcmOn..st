printing
printAsTermForAcmOn: aWriteStream

	aWriteStream nextPutAll: 'NOT '.
	element printAsTermForAcmOn: aWriteStream.
