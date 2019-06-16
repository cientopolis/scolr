accessing
fullReferenceCommit
	"ReviewnatorDeployer referenceCommit"

	^ (IceRepository allInstances detect: [ :each | each name = 'scolr' ]) loadedCode
		referenceCommit commitId