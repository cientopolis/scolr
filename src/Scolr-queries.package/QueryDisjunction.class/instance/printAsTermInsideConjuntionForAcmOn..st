printing
printAsTermInsideConjuntionForAcmOn: aWriteStream

	aWriteStream nextPutAll: '('.
	leftTerm printAsTermForAcmOn: aWriteStream.
	aWriteStream nextPutAll: ' OR '.
	rightTerm printAsTermForAcmOn: aWriteStream.
	aWriteStream nextPutAll: ')'