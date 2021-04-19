accessing
fullReferenceCommit
	"ReviewnatorDeployer referenceCommit"

	^ (IceLibgitRepository  allInstances detect: [ :each | each name = 'scolr' ]) workingCopy 
		referenceCommit id 