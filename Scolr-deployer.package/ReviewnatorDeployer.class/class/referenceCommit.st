accessing
referenceCommit
	"ReviewnatorDeployer referenceCommit"

	| workingCopy |
	workingCopy := self iceWorkingCopy.
	^ workingCopy
		ifNil: [ "We are in pharo 6"
			(IceRepository allInstances detect: [ :each | each name = 'reviewnator' ]) loadedCode
				referenceCommit commitId first: 7 ]
		ifNotNil: [ workingCopy referenceCommit id first: 7 ]