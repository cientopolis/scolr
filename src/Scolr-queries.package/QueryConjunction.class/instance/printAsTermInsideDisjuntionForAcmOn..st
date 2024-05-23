printing
printAsTermInsideDisjuntionForAcmOn: aWriteStream

	aWriteStream nextPutAll: '('.
	leftTerm printAsTermForAcmOn: aWriteStream.
	aWriteStream nextPutAll: ' AND '.
	rightTerm printAsTermForAcmOn: aWriteStream.
	aWriteStream nextPutAll: ')'