printing
printOn: aStream
	elements isEmpty
		ifTrue: [ aStream nextPutAll: blockOrString ]
		ifFalse: [ elements do: [ :each | each printOn: aStream ] ]