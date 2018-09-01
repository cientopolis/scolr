hooks
referenceCommit
	^ (IceRepository allInstances detect: [ :each | each name = 'reviewnator' ]) loadedCode referenceCommit commitId first: 7