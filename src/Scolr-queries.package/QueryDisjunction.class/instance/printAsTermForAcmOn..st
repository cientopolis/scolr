printing
printAsTermForAcmOn: aWriteStream

	leftTerm printAsTermInsideDisjuntionForAcmOn: aWriteStream.
	aWriteStream nextPutAll: ' OR '.
	rightTerm printAsTermInsideDisjuntionForAcmOn: aWriteStream.
