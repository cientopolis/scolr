printing
printAsTermForAcmOn: aWriteStream

	aWriteStream
		nextPut: $";
		nextPutAll: text;
		nextPut: $"