printing
printQueryFor: aQueryTerm on: aStream

	aStream nextPutAll: 'Title: ('.

	aQueryTerm printAsTermForAcmOn: aStream.

	aStream nextPutAll: ') OR Abstract: ('.

	aQueryTerm printAsTermForAcmOn: aStream.

	aStream nextPutAll: ')'