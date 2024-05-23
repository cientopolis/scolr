printing
printAsTermInsideDisjuntionForAcmOn: aWriteStream

	leftTerm printAsTermForAcmOn: aWriteStream.
	aWriteStream nextPutAll: ' OR '.
	rightTerm printAsTermForAcmOn: aWriteStream