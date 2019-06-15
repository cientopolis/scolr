printing
printOn: aStream
	elements do: [ :each | each printOn: aStream ].
	aStream cr