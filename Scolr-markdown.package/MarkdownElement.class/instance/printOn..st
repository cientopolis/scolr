printing
printOn: aStream
	elements isEmpty
		ifTrue: [ blockOrString isString
				ifTrue: [ aStream nextPutAll: blockOrString ] ]
		ifFalse: [ elements do: [ :each | each printOn: aStream ] ]