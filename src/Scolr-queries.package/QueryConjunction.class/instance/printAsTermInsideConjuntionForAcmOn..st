printing
printAsTermInsideConjuntionForAcmOn: aWriteStream

	leftTerm printAsTermForAcmOn: aWriteStream.
	aWriteStream nextPutAll: ' AND '.
	rightTerm printAsTermForAcmOn: aWriteStream