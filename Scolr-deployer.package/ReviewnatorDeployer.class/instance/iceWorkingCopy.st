accessing
iceWorkingCopy
	^ IceWorkingCopy allInstances 
		detect:
			[ :each | (each packages collect: #name) includes: 'BaselineOfReviewnator' ]
		ifNone: [ nil ]