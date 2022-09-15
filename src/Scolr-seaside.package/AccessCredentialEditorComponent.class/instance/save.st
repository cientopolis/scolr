callback
save
	credential accessCode: accessCode.
	credential notes: notes.
	credential repositoryFilename: repositoryFile.
	credential articleLimit:  ([limit asNumber ] on: Error do: [ 100 ]).
	self answer: credential