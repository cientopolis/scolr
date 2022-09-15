demos
resetDemo
	| stream |
	self demoFileFullname asFileReference exists
		ifTrue: [ self demoFileFullname asFileReference delete ].
	stream := File openForWriteFileNamed: self demoFileFullname.
	stream nextPutAll: self demoFileContents.
	stream close