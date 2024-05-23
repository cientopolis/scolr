printing
printAsTermForAcmOn: aWriteStream

	leftTerm printAsTermInsideConjuntionForAcmOn: aWriteStream.
	aWriteStream nextPutAll: ' AND '.
	rightTerm printAsTermInsideConjuntionForAcmOn: aWriteStream